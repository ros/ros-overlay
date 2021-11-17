# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="ifm pmd-based 3D ToF Camera ROS package"
HOMEPAGE="https://github.com/lovepark/ifm3d-ros"
SRC_URI="https://github.com/ifm/${PN}-ros-release/archive/release/noetic/${PN}/0.6.2-3.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cv_bridge
	ros-noetic/ifm3d_core
	ros-noetic/image_transport
	ros-noetic/message_generation
	ros-noetic/nodelet
	ros-noetic/pcl_ros
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/rostest
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
