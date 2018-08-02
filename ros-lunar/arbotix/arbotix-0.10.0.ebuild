# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ArbotiX Drivers"
HOMEPAGE="http://ros.org/wiki/arbotix"
SRC_URI="https://github.com/vanadiumlabs/${PN}_ros-release/archive/release/lunar/${PN}/0.10.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/arbotix_controllers
	ros-lunar/arbotix_firmware
	ros-lunar/arbotix_msgs
	ros-lunar/arbotix_python
	ros-lunar/arbotix_sensors
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
