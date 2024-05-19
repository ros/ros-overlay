# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Simple node to publish regular IP camera video streams to a ros topic."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/alireza-hosseini/${PN}-release/archive/release/noetic/${PN}/0.1.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/camera_info_manager
	ros-noetic/cv_bridge
	ros-noetic/dynamic_reconfigure
	ros-noetic/image_transport
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
