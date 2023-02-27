# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="ros2 hardware interface for nmea_gps"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/OUXT-Polaris/${PN}-release/archive/release/galactic/${PN}/0.0.2-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/controller_interface
	ros-galactic/diagnostic_msgs
	ros-galactic/geographic_msgs
	ros-galactic/hardware_interface
	ros-galactic/nmea_msgs
	ros-galactic/pluginlib
	ros-galactic/quaternion_operation
	ros-galactic/rclcpp
	ros-galactic/rclcpp_components
	ros-galactic/realtime_tools
	ros-galactic/ros2_control
	ros-galactic/rviz2
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ouxt_lint_common )
	dev-libs/boost[python]
	x11-libs/gtk+:3
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
