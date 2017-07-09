# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Oros Tools is software suite that provide high	level functions to the web pl"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/easymov/oros_tools-release/archive/release/kinetic/oros_tools/0.1.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/log_server
	ros-kinetic/ros_peerjs
	ros-kinetic/rosbridge_suite
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

