# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="HTTP Streaming of ROS Image Topics in Multiple Formats"
HOMEPAGE="http://ros.org/wiki/web_video_server"
SRC_URI="https://github.com/RobotWebTools-release/${PN}-release/archive/release/kinetic/${PN}/0.2.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/async_web_server_cpp
	ros-kinetic/cv_bridge
	ros-kinetic/image_transport
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/sensor_msgs
	virtual/ffmpeg
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
