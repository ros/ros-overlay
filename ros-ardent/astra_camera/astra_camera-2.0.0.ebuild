# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Drivers for Orbbec Astra Devices."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ros_${PN}-release/archive/release/ardent/${PN}/2.0.0-0.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-ardent/builtin_interfaces
	ros-ardent/rclcpp
	ros-ardent/sensor_msgs
	dev-libs/boost
	virtual/libudev
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
