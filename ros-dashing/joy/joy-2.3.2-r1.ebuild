# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="ROS2 driver for a generic Linux joystick.\
	Will contain a MacOS and Win[...]"
HOMEPAGE="https://github.com/ros2/joystick_drivers"
SRC_URI="https://github.com/ros2-gbp/${PN}stick_drivers-release/archive/release/dashing/${PN}/2.3.2-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/rclcpp
	ros-dashing/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
