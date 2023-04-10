# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="RaspiMouse ROS 2 node"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}2-release/archive/release/humble/${PN}/1.1.1-7.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/geometry_msgs
	ros-humble/lifecycle_msgs
	ros-humble/nav_msgs
	ros-humble/raspimouse_msgs
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/rclcpp_lifecycle
	ros-humble/std_msgs
	ros-humble/std_srvs
	ros-humble/tf2
	ros-humble/tf2_ros
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
