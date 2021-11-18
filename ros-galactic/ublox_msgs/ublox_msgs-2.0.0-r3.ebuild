# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="ublox_msgs contains raw messages for u-blox GNSS devices."
HOMEPAGE="http://ros.org/wiki/ublox"
SRC_URI="https://github.com/ros2-gbp/ublox-release/archive/release/galactic/${PN}/2.0.0-3.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/sensor_msgs
	ros-galactic/std_msgs
	ros-galactic/ublox_serialization
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
	ros-galactic/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
