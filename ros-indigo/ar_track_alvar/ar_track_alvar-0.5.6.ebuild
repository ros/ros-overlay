# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package is a ROS wrapper for Alvar, an open source AR tag tracking library"
HOMEPAGE="http://ros.org/wiki/ar_track_alvar"
SRC_URI="https://github.com/ros-gbp/ar_track_alvar-release/archive/release/indigo/ar_track_alvar/0.5.6-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ar_track_alvar_msgs
	ros-indigo/cv_bridge
	ros-indigo/dynamic_reconfigure
	ros-indigo/geometry_msgs
	ros-indigo/image_transport
	ros-indigo/message_runtime
	ros-indigo/pcl_conversions
	ros-indigo/pcl_ros
	ros-indigo/resource_retriever
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/tf2
	ros-indigo/visualization_msgs
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

