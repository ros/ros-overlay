# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rosserial for embedded Linux enviroments"
HOMEPAGE="http://ros.org/wiki/rosserial_embeddedlinux"
SRC_URI="https://github.com/ros-gbp/rosserial-release/archive/release/noetic/${PN}/0.9.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/rospy
	ros-noetic/rosserial_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/rosserial_client
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
