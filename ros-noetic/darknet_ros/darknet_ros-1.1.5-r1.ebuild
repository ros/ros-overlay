# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Darknet is an open source neural network framework that runs on CPU and GPU[...]"
HOMEPAGE="https://github.com/leggedrobotics/darknet_ros"
SRC_URI="https://github.com/leggedrobotics/${PN}-release/archive/release/noetic/${PN}/1.1.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/cv_bridge
	ros-noetic/darknet_ros_msgs
	ros-noetic/image_transport
	ros-noetic/message_generation
	ros-noetic/nodelet
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	test? ( ros-noetic/rostest )
	dev-libs/boost[python]
	media-libs/opencv
	x11-libs/libX11
	x11-libs/libXext
	x11-libs/libXt
	test? ( net-misc/wget )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
