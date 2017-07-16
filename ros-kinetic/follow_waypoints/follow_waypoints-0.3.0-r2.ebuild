# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The follow_waypoints node will listen for waypoints given as\
	  poses and whe"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/danielsnider/follow_waypoints-release/archive/release/kinetic/follow_waypoints/0.3.0-2.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/geometry_msgs
	ros-kinetic/move_base_msgs
	ros-kinetic/rospy
	ros-kinetic/smach
	ros-kinetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

