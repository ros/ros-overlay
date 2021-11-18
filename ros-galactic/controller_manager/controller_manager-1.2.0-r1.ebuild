# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Description of controller_manager"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ros2_control-release/archive/release/galactic/${PN}/1.2.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ament_index_cpp
	ros-galactic/controller_interface
	ros-galactic/controller_manager_msgs
	ros-galactic/hardware_interface
	ros-galactic/launch
	ros-galactic/launch_ros
	ros-galactic/pluginlib
	ros-galactic/rclcpp
	ros-galactic/rcpputils
	ros-galactic/ros2_control_test_assets
	ros-galactic/ros2param
	ros-galactic/ros2run
	test? ( ros-galactic/ament_cmake_gmock )
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
