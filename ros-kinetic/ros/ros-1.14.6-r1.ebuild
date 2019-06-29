# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS packaging system"
HOMEPAGE="http://www.ros.org/wiki/ROS"
SRC_URI="https://github.com/${PN}-gbp/${PN}-release/archive/release/kinetic/${PN}/1.14.6-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/catkin
	ros-kinetic/mk
	ros-kinetic/rosbash
	ros-kinetic/rosboost_cfg
	ros-kinetic/rosbuild
	ros-kinetic/rosclean
	ros-kinetic/roscreate
	ros-kinetic/roslang
	ros-kinetic/roslib
	ros-kinetic/rosmake
	ros-kinetic/rosunit
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
