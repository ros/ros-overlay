# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.fel.cvut.cz/cras/ros-release/ros-utils/-/archive/release/noetic/${PN}/2.3.9-1/archive.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/class_loader
	ros-noetic/compressed_depth_image_transport
	ros-noetic/compressed_image_transport
	ros-noetic/cras_cpp_common
	ros-noetic/cras_topic_tools
	ros-noetic/dynamic_reconfigure
	ros-noetic/image_transport
	ros-noetic/pluginlib
	ros-noetic/sensor_msgs
	ros-noetic/theora_image_transport
	ros-noetic/topic_tools
	test? ( ros-noetic/rosbag )
	test? ( ros-noetic/roslint )
	media-libs/libjpeg-turbo
	virtual/python-enum34
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
