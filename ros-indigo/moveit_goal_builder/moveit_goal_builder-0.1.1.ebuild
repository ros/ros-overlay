# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The moveit_goal_builder package"
HOMEPAGE="http://wiki.ros.org/moveit_goal_builder"
SRC_URI="https://github.com/jstnhuang-release/moveit_goal_builder-release/archive/release/indigo/moveit_goal_builder/0.1.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/geometry_msgs
	ros-indigo/moveit_core
	ros-indigo/moveit_msgs
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/shape_msgs
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

