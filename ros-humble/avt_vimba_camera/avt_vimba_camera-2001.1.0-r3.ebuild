# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Camera driver for Allied Vision Technologies \(AVT\) cameras, based on thei[...]"
HOMEPAGE="https://github.com/astuff/avt_vimba_camera"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/2001.1.0-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/camera_info_manager
	ros-humble/diagnostic_msgs
	ros-humble/diagnostic_updater
	ros-humble/image_proc
	ros-humble/image_transport
	ros-humble/message_filters
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	ros-humble/stereo_image_proc
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
