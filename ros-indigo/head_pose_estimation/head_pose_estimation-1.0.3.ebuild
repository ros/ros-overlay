# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS wrapper around Fanelli et al.\'s Real Time Head Pose Estimation from Co[...]"
HOMEPAGE="http://ros.org/wiki/head_pose_estimation"
SRC_URI="https://github.com/OSUrobotics/head_pose_estimation-release/archive/release/indigo/head_pose_estimation/1.0.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/angles
	ros-indigo/cv_bridge
	ros-indigo/dynamic_reconfigure
	ros-indigo/face_detector
	ros-indigo/geometry_msgs
	ros-indigo/image_transport
	ros-indigo/message_filters
	ros-indigo/pcl_ros
	ros-indigo/people_msgs
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/tf
	dev-python/numpy
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/orocos_kdl
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
