# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="ROS packaging system"
HOMEPAGE="http://www.ros.org/wiki/ROS"
SRC_URI="https://github.com/${PN}-gbp/${PN}-release/archive/release/noetic/${PN}/1.15.8-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/catkin
	ros-noetic/mk
	ros-noetic/rosbash
	ros-noetic/rosboost_cfg
	ros-noetic/rosbuild
	ros-noetic/rosclean
	ros-noetic/roscreate
	ros-noetic/roslang
	ros-noetic/roslib
	ros-noetic/rosmake
	ros-noetic/rosunit
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
