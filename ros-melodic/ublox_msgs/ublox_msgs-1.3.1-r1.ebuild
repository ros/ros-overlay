# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ublox_msgs contains raw messages for u-blox GNSS devices."
HOMEPAGE="http://ros.org/wiki/ublox"
SRC_URI="https://github.com/KumarRobotics/ublox-release/archive/release/melodic/${PN}/1.3.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/message_runtime
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/ublox_serialization
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
