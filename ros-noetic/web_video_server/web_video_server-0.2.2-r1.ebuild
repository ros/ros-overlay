# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="HTTP Streaming of ROS Image Topics in Multiple Formats"
HOMEPAGE="http://ros.org/wiki/web_video_server"
SRC_URI="https://github.com/RobotWebTools-release/${PN}-release/archive/release/noetic/${PN}/0.2.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/async_web_server_cpp
	ros-noetic/cv_bridge
	ros-noetic/image_transport
	ros-noetic/roscpp
	ros-noetic/roslib
	ros-noetic/sensor_msgs
	virtual/ffmpeg
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
