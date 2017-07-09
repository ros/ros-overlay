# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Utilities and tools developed for rocon, but usable beyond the boundaries
	of'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_tools-release/archive/release/indigo/rocon_tools/0.1.23-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rocon_console
	ros-indigo/rocon_ebnf
	ros-indigo/rocon_interactions
	ros-indigo/rocon_launch
	ros-indigo/rocon_master_info
	ros-indigo/rocon_python_comms
	ros-indigo/rocon_python_redis
	ros-indigo/rocon_python_utils
	ros-indigo/rocon_python_wifi
	ros-indigo/rocon_semantic_version
	ros-indigo/rocon_uri
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

