# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The video_stream_opencv package contains a node to publish a video stream \[...]"
HOMEPAGE="http://www.ros.org/wiki/video_stream_opencv"
SRC_URI="https://github.com/ros-drivers/${PN}-release/archive/release/indigo/${PN}/1.1.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/camera_info_manager
	ros-indigo/cv_bridge
	ros-indigo/image_transport
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
