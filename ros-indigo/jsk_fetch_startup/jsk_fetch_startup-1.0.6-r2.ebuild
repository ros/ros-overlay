# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="jsk_fetch_startup	 data/boost_soundwav is downloaded from https://wwwyout"
HOMEPAGE="http://ros.org/wiki/jsk_fetch_startup"
SRC_URI="https://github.com/tork-a/jsk_robot-release/archive/release/indigo/jsk_fetch_startup/1.0.6-2.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/amcl
	ros-indigo/fetch_navigation
	ros-indigo/jsk_maps
	ros-indigo/jsk_pr2_startup
	ros-indigo/jsk_robot_startup
	ros-indigo/map_server
	ros-indigo/move_base
	ros-indigo/rviz
	ros-indigo/tf2_ros
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

