# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rosnode is a command-line tool for displaying debug information\
	about [...]"
HOMEPAGE="http://ros.org/wiki/rosnode"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/${PN}/1.12.14-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rosgraph
	ros-kinetic/rostopic
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/rostest
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
