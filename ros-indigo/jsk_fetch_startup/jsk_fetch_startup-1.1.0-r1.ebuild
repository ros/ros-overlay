# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="jsk_fetch_startup\
\
	 data/boost_sound.wav is downloaded from https://www.yout"
HOMEPAGE="http://ros.org/wiki/jsk_fetch_startup"
SRC_URI="https://github.com/tork-a/jsk_robot-release/archive/release/indigo/jsk_fetch_startup/1.1.0-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/amcl
	ros-indigo/fetch_driver_msgs
	ros-indigo/fetch_moveit_config
	ros-indigo/fetch_navigation
	ros-indigo/fetch_teleop
	ros-indigo/joy
	ros-indigo/jsk_maps
	ros-indigo/jsk_robot_startup
	ros-indigo/map_server
	ros-indigo/move_base
	ros-indigo/rviz
	ros-indigo/safe_teleop_base
	ros-indigo/tf2_ros
	ros-indigo/topic_tools
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

