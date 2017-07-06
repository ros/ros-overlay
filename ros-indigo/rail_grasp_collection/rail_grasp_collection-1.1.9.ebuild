# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Grasp Collection for Constructing a Grasping and Recognition Database'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gt-rail-release/rail_pick_and_place-release/archive/release/indigo/rail_grasp_collection/1.1.9-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/geometry_msgs
	ros-indigo/graspdb
	ros-indigo/rail_manipulation_msgs
	ros-indigo/rail_pick_and_place_msgs
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/tf2_ros
	ros-indigo/tf2_sensor_msgs
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

