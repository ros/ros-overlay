# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This is an implementation of the EtherCAT master protocol for use wiht ros_[...]"
HOMEPAGE="http://ros.org/wiki/ros_ethercat_eml"
SRC_URI="https://github.com/shadow-robot/${PN}-release/archive/release/noetic/${PN}/0.4.0-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/roscpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
