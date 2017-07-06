# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Wraps the ViSP moving edge tracker provided by the ViSP visual
	servoing libr'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/lagadic/vision_visp-release/archive/release/indigo/visp_tracker/0.10.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/dynamic_reconfigure
	ros-indigo/geometry_msgs
	ros-indigo/image_proc
	ros-indigo/image_transport
	ros-indigo/message_generation
	ros-indigo/message_runtime
	ros-indigo/nodelet
	ros-indigo/resource_retriever
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/visp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

