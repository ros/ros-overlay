# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A ROS2 driver for the SICK TiM series of laser scanners.\
	This package [...]"
HOMEPAGE="http://wiki.ros.org/sick_scan2"
SRC_URI="https://github.com/SICKAG/${PN}-release/archive/release/dashing/${PN}/0.1.4-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/diagnostic_updater
	ros-dashing/rclcpp
	ros-dashing/sensor_msgs
	ros-dashing/std_msgs
	test? ( ros-dashing/ament_cmake_gtest )
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
