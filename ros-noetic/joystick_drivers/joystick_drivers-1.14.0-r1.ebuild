# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This metapackage depends on packages for interfacing common\
	joysticks [...]"
HOMEPAGE="http://www.ros.org/wiki/joystick_drivers"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/1.14.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/joy
	ros-noetic/ps3joy
	ros-noetic/spacenav_node
	ros-noetic/wiimote
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
