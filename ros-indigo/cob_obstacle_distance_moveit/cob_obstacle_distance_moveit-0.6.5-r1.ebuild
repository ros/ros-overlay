# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package provides nodes for calculating the minimal distance to robot links,"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_manipulation-release/archive/release/indigo/cob_obstacle_distance_moveit/0.6.5-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cmake_modules
	ros-indigo/cob_control_msgs
	ros-indigo/cob_srvs
	ros-indigo/eigen_conversions
	ros-indigo/fcl
	ros-indigo/geometric_shapes
	ros-indigo/geometry_msgs
	ros-indigo/moveit_core
	ros-indigo/moveit_msgs
	ros-indigo/moveit_ros_perception
	ros-indigo/moveit_ros_planning_interface
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/tf
	ros-indigo/tf_conversions
	dev-libs/boost
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

