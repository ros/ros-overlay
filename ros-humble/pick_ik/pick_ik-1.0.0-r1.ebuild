# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Inverse Kinematics solver for MoveIt"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/1.0.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/generate_parameter_library
	ros-humble/moveit_core
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/rsl
	ros-humble/tf2_geometry_msgs
	ros-humble/tf2_kdl
	ros-humble/tl_expected
	test? ( ros-humble/moveit_resources_panda_moveit_config )
	dev-libs/libfmt
	dev-cpp/range-v3
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
