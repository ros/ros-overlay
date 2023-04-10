# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="ublox_msgs contains raw messages for u-blox GNSS devices."
HOMEPAGE="http://ros.org/wiki/ublox"
SRC_URI="https://github.com/ros2-gbp/ublox-release/archive/release/humble/${PN}/2.3.0-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	ros-humble/ublox_serialization
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_ros
	ros-humble/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
