# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ArbotiX Drivers"
HOMEPAGE="http://ros.org/wiki/arbotix"
SRC_URI="https://github.com/vanadiumlabs/${PN}_ros-release/archive/release/melodic/${PN}/0.10.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/arbotix_controllers
	ros-melodic/arbotix_firmware
	ros-melodic/arbotix_msgs
	ros-melodic/arbotix_python
	ros-melodic/arbotix_sensors
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
