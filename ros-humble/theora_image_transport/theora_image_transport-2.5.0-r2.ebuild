# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Theora_image_transport provides a plugin to image_transport for\
	transp[...]"
HOMEPAGE="http://www.ros.org/wiki/image_transport_plugins"
SRC_URI="https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/humble/${PN}/2.5.0-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/cv_bridge
	ros-humble/image_transport
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/rcutils
	ros-humble/rosidl_default_runtime
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	test? ( ros-humble/ament_lint_common )
	media-libs/libogg
	media-libs/opencv
	media-libs/libtheora
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/rosidl_default_generators
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
