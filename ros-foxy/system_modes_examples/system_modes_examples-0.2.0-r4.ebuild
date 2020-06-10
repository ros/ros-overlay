# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Simple example system for system_modes package."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/microROS/system_modes-release/archive/release/foxy/${PN}/0.2.0-4.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/rclcpp
	ros-foxy/rclcpp_lifecycle
	ros-foxy/system_modes
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
