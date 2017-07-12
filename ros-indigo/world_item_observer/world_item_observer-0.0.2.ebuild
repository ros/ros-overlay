# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Persistent Observer of Items in the World for the Spatial World Database"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gt-rail-release/spatial_temporal_learning-release/archive/release/indigo/world_item_observer/0.0.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/graspdb
	ros-indigo/rail_manipulation_msgs
	ros-indigo/roscpp
	ros-indigo/tf2
	ros-indigo/tf2_ros
	ros-indigo/worldlib
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

