# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="An Event-Driven, Asynchronous, Behavioral State Machine Library for ROS2 \([...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/robosoft-ai/SMACC2-release/archive/release/foxy/${PN}/2.1.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/rcl
	ros-foxy/rclcpp
	ros-foxy/rclcpp_action
	ros-foxy/smacc2_msgs
	ros-foxy/tracetools
	ros-foxy/tracetools_launch
	ros-foxy/tracetools_trace
	dev-libs/boost[threads]
	dev-util/lttng-ust
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	dev-libs/boost[threads]
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
