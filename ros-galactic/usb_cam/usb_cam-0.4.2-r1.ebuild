# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A ROS2 Driver for V4L USB Cameras"
HOMEPAGE="http://wiki.ros.org/usb_cam"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/galactic/${PN}/0.4.2-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/builtin_interfaces
	ros-galactic/camera_info_manager
	ros-galactic/image_transport
	ros-galactic/image_transport_plugins
	ros-galactic/rclcpp
	ros-galactic/rclcpp_components
	ros-galactic/rosidl_default_runtime
	ros-galactic/sensor_msgs
	ros-galactic/std_msgs
	ros-galactic/std_srvs
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	virtual/ffmpeg
	media-tv/v4l-utils
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_auto
	ros-galactic/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
