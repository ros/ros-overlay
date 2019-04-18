# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Utilities and tools developed for rocon, but usable beyond the boundaries\
[...]"
HOMEPAGE="http://www.ros.org/wiki/rocon_tools"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/melodic/${PN}/0.3.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/rocon_console
	ros-melodic/rocon_ebnf
	ros-melodic/rocon_interactions
	ros-melodic/rocon_launch
	ros-melodic/rocon_master_info
	ros-melodic/rocon_python_comms
	ros-melodic/rocon_python_redis
	ros-melodic/rocon_python_utils
	ros-melodic/rocon_python_wifi
	ros-melodic/rocon_semantic_version
	ros-melodic/rocon_uri
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
