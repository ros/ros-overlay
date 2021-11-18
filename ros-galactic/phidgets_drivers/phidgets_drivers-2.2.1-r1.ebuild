# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="API and ROS drivers for Phidgets devices"
HOMEPAGE="http://ros.org/wiki/phidgets_drivers"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/2.2.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/libphidget22
	ros-galactic/phidgets_accelerometer
	ros-galactic/phidgets_analog_inputs
	ros-galactic/phidgets_api
	ros-galactic/phidgets_digital_inputs
	ros-galactic/phidgets_digital_outputs
	ros-galactic/phidgets_gyroscope
	ros-galactic/phidgets_high_speed_encoder
	ros-galactic/phidgets_ik
	ros-galactic/phidgets_magnetometer
	ros-galactic/phidgets_motors
	ros-galactic/phidgets_msgs
	ros-galactic/phidgets_spatial
	ros-galactic/phidgets_temperature
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
