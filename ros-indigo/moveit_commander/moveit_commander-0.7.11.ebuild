# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Python interfaces to MoveIt'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/indigo/moveit_commander/0.7.11-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/moveit_msgs
	ros-indigo/moveit_ros_planning_interface
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/shape_msgs
	ros-indigo/tf
	dev-lang/python
	dev-libs/assimp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

