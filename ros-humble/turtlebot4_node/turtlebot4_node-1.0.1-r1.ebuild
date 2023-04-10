# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Turtlebot4 Node"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/turtlebot4-release/archive/release/humble/${PN}/1.0.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/irobot_create_msgs
	ros-humble/rclcpp
	ros-humble/rclcpp_action
	ros-humble/rcutils
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	ros-humble/std_srvs
	ros-humble/turtlebot4_msgs
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
