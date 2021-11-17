# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A ROS driver node for AVT/Prosilica Gigabit Ethernet \(GigE\) cameras."
HOMEPAGE="http://www.ros.org/wiki/prosilica_camera"
SRC_URI="https://github.com/ros-drivers-gbp/prosilica_driver-release/archive/release/noetic/${PN}/1.9.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/camera_calibration_parsers
	ros-noetic/diagnostic_msgs
	ros-noetic/diagnostic_updater
	ros-noetic/dynamic_reconfigure
	ros-noetic/image_transport
	ros-noetic/nodelet
	ros-noetic/nodelet_topic_tools
	ros-noetic/polled_camera
	ros-noetic/prosilica_gige_sdk
	ros-noetic/roscpp
	ros-noetic/self_test
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/rosconsole
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
