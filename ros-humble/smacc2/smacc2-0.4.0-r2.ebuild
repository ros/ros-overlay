# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="An Event-Driven, Asynchronous, Behavioral State Machine Library for ROS2 \([...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/SMACC2-release/archive/release/humble/${PN}/0.4.0-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/rcl
	ros-humble/rclcpp
	ros-humble/rclcpp_action
	ros-humble/smacc2_msgs
	ros-humble/tracetools
	ros-humble/tracetools_launch
	ros-humble/tracetools_trace
	dev-libs/boost[threads]
	dev-util/lttng-ust
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	dev-libs/boost[threads]
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
