# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A wrapper around the EPOS Command Library to provide easy integration with [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RIVeR-Lab-release/epos_hardware-release/archive/release/indigo/epos_hardware/0.0.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/controller_manager
	ros-indigo/diagnostic_updater
	ros-indigo/epos_library
	ros-indigo/hardware_interface
	ros-indigo/roscpp
	ros-indigo/transmission_interface
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
