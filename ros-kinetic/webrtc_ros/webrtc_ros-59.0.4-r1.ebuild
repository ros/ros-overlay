# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A collection of ROS utilities for using WebRTC with ROS"
HOMEPAGE="http://wiki.ros.org/webrtc_ros"
SRC_URI="https://github.com/RobotWebTools-release/${PN}-release/archive/release/kinetic/${PN}/59.0.4-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/async_web_server_cpp
	ros-kinetic/cv_bridge
	ros-kinetic/image_transport
	ros-kinetic/message_runtime
	ros-kinetic/nodelet
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	ros-kinetic/webrtc
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
