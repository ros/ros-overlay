# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Utilities and tools developed for rocon, but usable beyond the boundaries	of"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_tools/0.3.2-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rocon_console
	ros-kinetic/rocon_ebnf
	ros-kinetic/rocon_interactions
	ros-kinetic/rocon_launch
	ros-kinetic/rocon_master_info
	ros-kinetic/rocon_python_comms
	ros-kinetic/rocon_python_redis
	ros-kinetic/rocon_python_utils
	ros-kinetic/rocon_python_wifi
	ros-kinetic/rocon_semantic_version
	ros-kinetic/rocon_uri
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

