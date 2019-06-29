# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="HTTP Streaming of ROS Image Topics in Multiple Formats"
HOMEPAGE="http://ros.org/wiki/web_video_server"
SRC_URI="https://github.com/RobotWebTools-release/${PN}-release/archive/release/melodic/${PN}/0.2.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/async_web_server_cpp
	ros-melodic/cv_bridge
	ros-melodic/image_transport
	ros-melodic/roscpp
	ros-melodic/roslib
	ros-melodic/sensor_msgs
	virtual/ffmpeg
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
