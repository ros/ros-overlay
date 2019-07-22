# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Wraps the ViSP moving edge tracker provided by the ViSP visual\
	servoin[...]"
HOMEPAGE="http://wiki.ros.org/wiki/visp_tracker"
SRC_URI="https://github.com/lagadic/vision_visp-release/archive/release/melodic/${PN}/0.11.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/image_proc
	ros-melodic/image_transport
	ros-melodic/message_generation
	ros-melodic/message_runtime
	ros-melodic/nodelet
	ros-melodic/resource_retriever
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
	ros-melodic/visp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
