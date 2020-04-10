# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="For more information read the readme.htm file located in"
HOMEPAGE="http://ros.org/wiki/cob_camera_sensors"
SRC_URI="https://github.com/ipa320/cob_driver-release/archive/release/melodic/${PN}/0.7.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cmake_modules
	ros-melodic/cob_vision_utils
	ros-melodic/cv_bridge
	ros-melodic/image_transport
	ros-melodic/message_filters
	ros-melodic/message_runtime
	ros-melodic/polled_camera
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	dev-libs/boost[python]
	media-libs/opencv
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
