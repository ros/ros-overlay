# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Common packages and data for the Building-Wide Intelligence\
	project of[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/utexas-bwi-gbp/bwi_common-release/archive/release/indigo/bwi_common/0.3.12-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/bwi_gazebo_entities
	ros-indigo/bwi_interruptable_action_server
	ros-indigo/bwi_joystick_teleop
	ros-indigo/bwi_kr_execution
	ros-indigo/bwi_logging
	ros-indigo/bwi_mapper
	ros-indigo/bwi_msgs
	ros-indigo/bwi_planning_common
	ros-indigo/bwi_rqt_plugins
	ros-indigo/bwi_scavenger
	ros-indigo/bwi_services
	ros-indigo/bwi_tasks
	ros-indigo/bwi_tools
	ros-indigo/bwi_virtour
	ros-indigo/multi_level_map_msgs
	ros-indigo/multi_level_map_server
	ros-indigo/multi_level_map_utils
	ros-indigo/stop_base
	ros-indigo/utexas_gdc
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
