# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Node for using a video file as video topic source."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/peci1/${PN}-release/archive/release/kinetic/${PN}/1.2.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cv_bridge
	ros-kinetic/rosbash_params
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	virtual/ffmpeg
	virtual/ffmpeg
	media-libs/opencv[python]
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
