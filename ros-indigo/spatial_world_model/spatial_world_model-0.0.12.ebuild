# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Spatial World Model for Object Tracking"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gt-rail-release/interactive_world-release/archive/release/indigo/spatial_world_model/0.0.12-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ar_track_alvar
	ros-indigo/ar_track_alvar_msgs
	ros-indigo/geometry_msgs
	ros-indigo/interactive_world_msgs
	ros-indigo/rail_manipulation_msgs
	ros-indigo/roscpp
	ros-indigo/roslib
	ros-indigo/std_srvs
	ros-indigo/tf2
	ros-indigo/tf2_ros
	virtual/libmysqlclient
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
