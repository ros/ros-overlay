# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The rosserial_server package provides a C implementation of the rosserial serv"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rosserial-release/archive/release/kinetic/rosserial_server/0.7.6-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/roscpp
	ros-kinetic/rosserial_msgs
	ros-kinetic/rosserial_python
	ros-kinetic/std_msgs
	ros-kinetic/topic_tools
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

