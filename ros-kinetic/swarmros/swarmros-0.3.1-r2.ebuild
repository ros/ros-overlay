# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="SwarmIO communications bridge for ROS"
HOMEPAGE="http://www.cpswarm.eu"
SRC_URI="https://github.com/amilankovich-slab/${PN}-release/archive/release/kinetic/${PN}/0.3.1-2.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="All rights reserved."

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rosconsole
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
