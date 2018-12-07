# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Python interfaces to MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/indigo/${PN}/0.7.14-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

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
	media-libs/assimp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
