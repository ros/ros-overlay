# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="API and ROS drivers for Phidgets devices"
HOMEPAGE="http://ros.org/wiki/phidgets_drivers"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/2.0.2-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/libphidget22
	ros-foxy/phidgets_accelerometer
	ros-foxy/phidgets_analog_inputs
	ros-foxy/phidgets_api
	ros-foxy/phidgets_digital_inputs
	ros-foxy/phidgets_digital_outputs
	ros-foxy/phidgets_gyroscope
	ros-foxy/phidgets_high_speed_encoder
	ros-foxy/phidgets_ik
	ros-foxy/phidgets_magnetometer
	ros-foxy/phidgets_motors
	ros-foxy/phidgets_msgs
	ros-foxy/phidgets_spatial
	ros-foxy/phidgets_temperature
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
