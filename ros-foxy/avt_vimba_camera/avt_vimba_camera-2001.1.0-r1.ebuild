# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Camera driver for Allied Vision Technologies \(AVT\) cameras, based on thei[...]"
HOMEPAGE="https://github.com/astuff/avt_vimba_camera"
SRC_URI="https://github.com/astuff/${PN}-release/archive/release/foxy/${PN}/2001.1.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/camera_info_manager
	ros-foxy/diagnostic_msgs
	ros-foxy/diagnostic_updater
	ros-foxy/image_proc
	ros-foxy/image_transport
	ros-foxy/message_filters
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	ros-foxy/stereo_image_proc
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
