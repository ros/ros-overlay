# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Components of MoveIt that offer simpler interfaces to planning and execution"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/indigo/${PN}/0.7.14-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/eigen_conversions
	ros-indigo/moveit_ros_manipulation
	ros-indigo/moveit_ros_move_group
	ros-indigo/moveit_ros_planning
	ros-indigo/moveit_ros_warehouse
	ros-indigo/rosconsole
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/tf
	ros-indigo/tf_conversions
	test? ( ros-indigo/moveit_resources )
	test? ( ros-indigo/rostest )
	dev-lang/python
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
