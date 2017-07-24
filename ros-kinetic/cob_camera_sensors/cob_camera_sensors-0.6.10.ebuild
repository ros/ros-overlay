# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="For more information read the readme.htm file located in"
HOMEPAGE="http://ros.org/wiki/cob_camera_sensors"
SRC_URI="https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_camera_sensors/0.6.10-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cmake_modules
	ros-kinetic/cob_vision_utils
	ros-kinetic/cv_bridge
	ros-kinetic/image_transport
	ros-kinetic/message_filters
	ros-kinetic/message_runtime
	ros-kinetic/polled_camera
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	dev-libs/boost
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

