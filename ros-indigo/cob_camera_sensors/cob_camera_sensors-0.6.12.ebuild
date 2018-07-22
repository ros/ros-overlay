# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="For more information read the readme.htm file located in"
HOMEPAGE="http://ros.org/wiki/cob_camera_sensors"
SRC_URI="https://github.com/ipa320/cob_driver-release/archive/release/indigo/${PN}/0.6.12-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cmake_modules
	ros-indigo/cob_vision_utils
	ros-indigo/cv_bridge
	ros-indigo/image_transport
	ros-indigo/message_filters
	ros-indigo/message_runtime
	ros-indigo/polled_camera
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	dev-libs/boost
	media-libs/opencv
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
