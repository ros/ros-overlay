# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A ROS2 driver for the SICK TiM series of laser scanners.\
	This package [...]"
HOMEPAGE="http://wiki.ros.org/sick_scan2"
SRC_URI="https://github.com/SICKAG/${PN}-release/archive/release/eloquent/${PN}/0.1.7-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/diagnostic_updater
	ros-eloquent/rclcpp
	ros-eloquent/sensor_msgs
	ros-eloquent/std_msgs
	test? ( ros-eloquent/ament_cmake_gtest )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
