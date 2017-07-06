# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'ROS packaging system'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ros-release/archive/release/kinetic/ros/1.13.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

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

