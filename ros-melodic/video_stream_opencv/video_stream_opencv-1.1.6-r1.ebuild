# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The video_stream_opencv package contains a node to publish a video stream \[...]"
HOMEPAGE="http://www.ros.org/wiki/video_stream_opencv"
SRC_URI="https://github.com/ros-drivers/${PN}-release/archive/release/melodic/${PN}/1.1.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/camera_info_manager
	ros-melodic/cv_bridge
	ros-melodic/dynamic_reconfigure
	ros-melodic/image_transport
	ros-melodic/nodelet
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rostopic )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
