# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Wraps the ViSP moving edge tracker provided by the ViSP visual\
	servoin[...]"
HOMEPAGE="http://wiki.ros.org/wiki/visp_tracker"
SRC_URI="https://github.com/lagadic/vision_visp-release/archive/release/noetic/${PN}/0.12.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/dynamic_reconfigure
	ros-noetic/geometry_msgs
	ros-noetic/image_proc
	ros-noetic/image_transport
	ros-noetic/message_generation
	ros-noetic/message_runtime
	ros-noetic/nodelet
	ros-noetic/resource_retriever
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf
	ros-noetic/visp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
