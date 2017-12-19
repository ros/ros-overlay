# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS packaging system"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/${PN}-gbp/${PN}-release/archive/release/lunar/${PN}/1.14.2-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/catkin
	ros-lunar/mk
	ros-lunar/rosbash
	ros-lunar/rosboost_cfg
	ros-lunar/rosbuild
	ros-lunar/rosclean
	ros-lunar/roscreate
	ros-lunar/roslang
	ros-lunar/roslib
	ros-lunar/rosmake
	ros-lunar/rosunit
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
