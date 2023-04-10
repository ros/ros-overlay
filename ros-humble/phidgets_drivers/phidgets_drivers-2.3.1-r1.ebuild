# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="API and ROS drivers for Phidgets devices"
HOMEPAGE="http://ros.org/wiki/phidgets_drivers"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/2.3.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD-LGPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/libphidget22
	ros-humble/phidgets_accelerometer
	ros-humble/phidgets_analog_inputs
	ros-humble/phidgets_api
	ros-humble/phidgets_digital_inputs
	ros-humble/phidgets_digital_outputs
	ros-humble/phidgets_gyroscope
	ros-humble/phidgets_high_speed_encoder
	ros-humble/phidgets_ik
	ros-humble/phidgets_magnetometer
	ros-humble/phidgets_motors
	ros-humble/phidgets_msgs
	ros-humble/phidgets_spatial
	ros-humble/phidgets_temperature
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
