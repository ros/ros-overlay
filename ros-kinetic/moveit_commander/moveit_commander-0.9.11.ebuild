# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Python interfaces to MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/kinetic/${PN}/0.9.11-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/moveit_msgs
	ros-kinetic/moveit_ros_planning_interface
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/shape_msgs
	ros-kinetic/tf
	dev-lang/python
	dev-libs/assimp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
