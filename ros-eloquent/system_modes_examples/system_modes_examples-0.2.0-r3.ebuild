# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Simple example system for system_modes package."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/microROS/system_modes-release/archive/release/eloquent/${PN}/0.2.0-3.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/rclcpp
	ros-eloquent/rclcpp_lifecycle
	ros-eloquent/system_modes
	test? ( ros-eloquent/ament_cmake )
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
