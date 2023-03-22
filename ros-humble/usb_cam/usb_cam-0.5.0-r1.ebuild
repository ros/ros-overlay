# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="A ROS2 Driver for V4L USB Cameras"
HOMEPAGE="http://wiki.ros.org/usb_cam"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/0.5.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/builtin_interfaces
	ros-humble/camera_info_manager
	ros-humble/cv_bridge
	ros-humble/image_transport
	ros-humble/image_transport_plugins
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/rosidl_default_runtime
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	ros-humble/std_srvs
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	virtual/ffmpeg
	media-tv/v4l-utils
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_auto
	ros-humble/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
