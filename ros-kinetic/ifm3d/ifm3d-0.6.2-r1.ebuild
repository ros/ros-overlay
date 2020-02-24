# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ifm pmd-based 3D ToF Camera ROS package"
HOMEPAGE="https://github.com/lovepark/ifm3d-ros"
SRC_URI="https://github.com/ifm/${PN}-ros-release/archive/release/kinetic/${PN}/0.6.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cv_bridge
	ros-kinetic/ifm3d_core
	ros-kinetic/image_transport
	ros-kinetic/message_generation
	ros-kinetic/nodelet
	ros-kinetic/pcl_ros
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/rostest
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
