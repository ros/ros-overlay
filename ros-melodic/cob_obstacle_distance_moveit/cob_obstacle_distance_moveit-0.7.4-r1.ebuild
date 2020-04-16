# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides nodes for calculating the minimal distance to robot l[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_manipulation-release/archive/release/melodic/${PN}/0.7.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cob_control_msgs
	ros-melodic/cob_srvs
	ros-melodic/eigen_conversions
	ros-melodic/geometric_shapes
	ros-melodic/geometry_msgs
	ros-melodic/moveit_core
	ros-melodic/moveit_msgs
	ros-melodic/moveit_ros_perception
	ros-melodic/moveit_ros_planning_interface
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/tf
	ros-melodic/tf2_ros
	ros-melodic/tf_conversions
	dev-libs/boost[python]
	sci-libs/fcl
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
