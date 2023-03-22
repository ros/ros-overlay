# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="ros2 hardware interface for nmea_gps"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/0.0.1-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/controller_interface
	ros-humble/geographic_msgs
	ros-humble/hardware_interface
	ros-humble/nmea_msgs
	ros-humble/pluginlib
	ros-humble/quaternion_operation
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/realtime_tools
	ros-humble/ros2_control
	ros-humble/rviz2
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ouxt_lint_common )
	dev-libs/boost[python]
	x11-libs/gtk+:3
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
