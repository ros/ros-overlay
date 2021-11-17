# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The nmea_comms package provides helper nodes for transmitting and receiving[...]"
HOMEPAGE="http://wiki.ros.org/nmea_comms"
SRC_URI="https://github.com/ros-drivers-gbp/${PN}-release/archive/release/noetic/${PN}/1.2.0-3.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/nmea_msgs
	ros-noetic/roscpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/roslaunch
	ros-noetic/roslint
	ros-noetic/rostest
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
