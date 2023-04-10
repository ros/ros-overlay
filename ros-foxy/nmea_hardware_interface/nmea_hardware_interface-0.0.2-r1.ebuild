# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="ros2 hardware interface for nmea_gps"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/OUXT-Polaris/${PN}-release/archive/release/foxy/${PN}/0.0.2-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/controller_interface
	ros-foxy/diagnostic_msgs
	ros-foxy/geographic_msgs
	ros-foxy/hardware_interface
	ros-foxy/nmea_msgs
	ros-foxy/pluginlib
	ros-foxy/quaternion_operation
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	ros-foxy/realtime_tools
	ros-foxy/ros2_control
	ros-foxy/rviz2
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ouxt_lint_common )
	dev-libs/boost[python]
	x11-libs/gtk+:3
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
