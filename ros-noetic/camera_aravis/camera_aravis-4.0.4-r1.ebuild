# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="camera_aravis: A complete and comfortable GenICam \(USB3Vision and GigEVisi[...]"
HOMEPAGE="https://github.com/FraunhoferIOSB/camera_aravis"
SRC_URI="https://github.com/FraunhoferIOSB/${PN}-release/archive/release/noetic/${PN}/4.0.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="LGPL-2.0-only"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/camera_info_manager
	ros-noetic/dynamic_reconfigure
	ros-noetic/image_transport
	ros-noetic/message_runtime
	ros-noetic/nodelet
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf
	ros-noetic/tf2_ros
	media-video/aravis
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	media-video/aravis
	dev-libs/glib
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
