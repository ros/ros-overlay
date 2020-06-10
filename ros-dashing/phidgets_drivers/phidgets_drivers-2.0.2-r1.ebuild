# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="API and ROS drivers for Phidgets devices"
HOMEPAGE="http://ros.org/wiki/phidgets_drivers"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/dashing/${PN}/2.0.2-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/libphidget22
	ros-dashing/phidgets_accelerometer
	ros-dashing/phidgets_analog_inputs
	ros-dashing/phidgets_api
	ros-dashing/phidgets_digital_inputs
	ros-dashing/phidgets_digital_outputs
	ros-dashing/phidgets_gyroscope
	ros-dashing/phidgets_high_speed_encoder
	ros-dashing/phidgets_ik
	ros-dashing/phidgets_magnetometer
	ros-dashing/phidgets_motors
	ros-dashing/phidgets_msgs
	ros-dashing/phidgets_spatial
	ros-dashing/phidgets_temperature
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
