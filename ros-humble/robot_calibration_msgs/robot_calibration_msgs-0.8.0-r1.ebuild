# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Messages for calibrating a robot"
HOMEPAGE="http://ros.org/wiki/robot_calibration_msgs"
SRC_URI="https://github.com/ros2-gbp/robot_calibration-release/archive/release/humble/${PN}/0.8.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/action_msgs
	ros-humble/builtin_interfaces
	ros-humble/rosidl_default_generators
	ros-humble/rosidl_default_runtime
	ros-humble/sensor_msgs
	ros-humble/std_msgs
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
