# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="An Event-Driven, Asynchronous, Behavioral State Machine Library for ROS2 \([...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/robosoft-ai/SMACC2-release/archive/release/galactic/${PN}/0.3.0-3.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/rcl
	ros-galactic/rclcpp
	ros-galactic/rclcpp_action
	ros-galactic/smacc2_msgs
	ros-galactic/tracetools
	ros-galactic/tracetools_launch
	ros-galactic/tracetools_trace
	dev-libs/boost[threads]
	dev-util/lttng-ust
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	dev-libs/boost[threads]
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
