# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Top-level ROS launch scripts for the Building-Wide Intelligence\
	\(BWI\[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/utexas-bwi-gbp/bwi-release/archive/release/indigo/bwi_launch/0.3.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/bwi_kr_execution
	ros-indigo/bwi_msgs
	ros-indigo/bwi_tools
	ros-indigo/multi_level_map_server
	ros-indigo/multi_level_map_utils
	ros-indigo/segbot_bringup
	ros-indigo/segbot_gazebo
	ros-indigo/segbot_gui
	ros-indigo/segbot_logical_translator
	ros-indigo/segbot_navigation
	ros-indigo/segbot_simulation_apps
	ros-indigo/utexas_gdc
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
