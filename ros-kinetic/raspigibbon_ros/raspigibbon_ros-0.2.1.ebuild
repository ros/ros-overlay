# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The raspigibbon_ros package"
HOMEPAGE="http://github.com/rt-net/RaspberryPiGibbon/wiki"
SRC_URI="https://github.com/raspberrypigibbon/${PN}-release/archive/release/kinetic/${PN}/0.2.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/futaba_serial_servo
	ros-kinetic/raspigibbon_bringup
	ros-kinetic/raspigibbon_description
	ros-kinetic/raspigibbon_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
