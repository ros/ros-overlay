# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Wraps the ViSP moving edge tracker provided by the ViSP visual\
	servoin[...]"
HOMEPAGE="http://wiki.ros.org/wiki/visp_tracker"
SRC_URI="https://github.com/lagadic/vision_visp-release/archive/release/kinetic/${PN}/0.11.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/geometry_msgs
	ros-kinetic/image_proc
	ros-kinetic/image_transport
	ros-kinetic/message_generation
	ros-kinetic/message_runtime
	ros-kinetic/nodelet
	ros-kinetic/resource_retriever
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/visp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
