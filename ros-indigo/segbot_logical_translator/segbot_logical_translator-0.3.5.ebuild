# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'High-level navigation application for the segbot allowing the segbot to
	appr'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/utexas-bwi-gbp/segbot-release/archive/release/indigo/segbot_logical_translator/0.3.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/bwi_mapper
	ros-indigo/bwi_msgs
	ros-indigo/bwi_planning_common
	ros-indigo/dynamic_reconfigure
	ros-indigo/map_msgs
	ros-indigo/message_filters
	ros-indigo/move_base_msgs
	ros-indigo/multi_level_map_msgs
	ros-indigo/multi_level_map_utils
	ros-indigo/nav_msgs
	ros-indigo/roscpp
	ros-indigo/segbot_navigation
	ros-indigo/tf
	ros-indigo/utexas_gdc
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

