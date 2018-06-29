# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Drivers for Orbbec Astra Devices."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ros_${PN}-release/archive/release/bouncy/${PN}/2.1.1-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-bouncy/builtin_interfaces
	ros-bouncy/rclcpp
	ros-bouncy/sensor_msgs
	dev-libs/boost
	virtual/libudev
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
