# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Wrapper of the Allied Vision Technologies \(AVT\) VIMBA Ethernet and Firewi[...]"
HOMEPAGE="http://wiki.ros.org/avt_vimba_ros"
SRC_URI="https://github.com/astuff/${PN}-release/archive/release/noetic/${PN}/0.0.12-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/camera_info_manager
	ros-noetic/diagnostic_updater
	ros-noetic/dynamic_reconfigure
	ros-noetic/image_geometry
	ros-noetic/image_proc
	ros-noetic/image_transport
	ros-noetic/message_filters
	ros-noetic/nodelet
	ros-noetic/polled_camera
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/stereo_image_proc
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
