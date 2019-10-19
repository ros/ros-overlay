# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Wrapper of the Allied Vision Technologies \(AVT\) VIMBA Ethernet and Firewi[...]"
HOMEPAGE="http://wiki.ros.org/avt_vimba_ros"
SRC_URI="https://github.com/astuff/${PN}-release/archive/release/kinetic/${PN}/0.0.11-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/camera_info_manager
	ros-kinetic/diagnostic_updater
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/image_geometry
	ros-kinetic/image_proc
	ros-kinetic/image_transport
	ros-kinetic/message_filters
	ros-kinetic/nodelet
	ros-kinetic/polled_camera
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/stereo_image_proc
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
