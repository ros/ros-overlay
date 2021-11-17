# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="API and ROS drivers for Phidgets devices"
HOMEPAGE="http://ros.org/wiki/phidgets_drivers"
SRC_URI="https://github.com/ros-drivers-gbp/${PN}-release/archive/release/noetic/${PN}/1.0.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/libphidget22
	ros-noetic/phidgets_accelerometer
	ros-noetic/phidgets_analog_inputs
	ros-noetic/phidgets_api
	ros-noetic/phidgets_digital_inputs
	ros-noetic/phidgets_digital_outputs
	ros-noetic/phidgets_gyroscope
	ros-noetic/phidgets_high_speed_encoder
	ros-noetic/phidgets_ik
	ros-noetic/phidgets_magnetometer
	ros-noetic/phidgets_motors
	ros-noetic/phidgets_msgs
	ros-noetic/phidgets_spatial
	ros-noetic/phidgets_temperature
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
