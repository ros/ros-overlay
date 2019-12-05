# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Driver for the Phidgets InterfaceKit devices"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/dashing/${PN}/2.0.1-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/launch
	ros-dashing/phidgets_analog_inputs
	ros-dashing/phidgets_digital_inputs
	ros-dashing/phidgets_digital_outputs
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
