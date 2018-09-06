# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="SainSmart USB relay driver controller"
HOMEPAGE="http://wiki.ros.org/sainsmart_relay_usb"
SRC_URI="https://github.com/DataspeedInc-release/${PN}-release/archive/release/melodic/${PN}/0.0.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/roscpp
	ros-melodic/std_msgs
	dev-embedded/libftdi
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslib
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
