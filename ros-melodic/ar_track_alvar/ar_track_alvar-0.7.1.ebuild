# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package is a ROS wrapper for Alvar, an open source AR tag tracking lib[...]"
HOMEPAGE="http://ros.org/wiki/ar_track_alvar"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.7.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-2.1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/ar_track_alvar_msgs
	ros-melodic/cv_bridge
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/image_transport
	ros-melodic/message_runtime
	ros-melodic/pcl_conversions
	ros-melodic/pcl_ros
	ros-melodic/resource_retriever
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
	ros-melodic/tf2
	ros-melodic/visualization_msgs
	test? ( ros-melodic/rosbag )
	test? ( ros-melodic/rostest )
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
