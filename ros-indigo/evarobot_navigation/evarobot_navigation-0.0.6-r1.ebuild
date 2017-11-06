# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="evarobot_navigation provides roslaunch script files to navigate the Evarobot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/inomuh/evapc_ros-release/archive/release/indigo/evarobot_navigation/0.0.6-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/amcl
	ros-indigo/evarobot_state_publisher
	ros-indigo/frontier_exploration
	ros-indigo/gmapping
	ros-indigo/map_server
	ros-indigo/master_discovery_fkie
	ros-indigo/master_sync_fkie
	ros-indigo/move_base
	ros-indigo/roscpp
	ros-indigo/rplidar_ros
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

