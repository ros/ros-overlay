# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="KDL implementation of ros2_control kinematics interface"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/kinematics_interface-release/archive/release/humble/${PN}/0.1.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/kdl_parser
	ros-humble/kinematics_interface
	ros-humble/pluginlib
	ros-humble/tf2_eigen_kdl
	test? ( ros-humble/ament_cmake_gmock )
	test? ( ros-humble/ros2_control_test_assets )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/eigen3_cmake_module
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
