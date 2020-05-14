# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A collection of ROS utilities for using WebRTC with ROS"
HOMEPAGE="http://wiki.ros.org/webrtc_ros"
SRC_URI="https://github.com/RobotWebTools-release/${PN}-release/archive/release/melodic/${PN}/59.0.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/async_web_server_cpp
	ros-melodic/cv_bridge
	ros-melodic/image_transport
	ros-melodic/message_runtime
	ros-melodic/nodelet
	ros-melodic/roscpp
	ros-melodic/std_msgs
	ros-melodic/webrtc
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
