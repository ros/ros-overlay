# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Provides a ublox_dgnss node for a u-blox GPS DGNSS receiver using Gen 9 UBX[...]"
HOMEPAGE="https://github.com/aussierobots/ublox_dgnss"
SRC_URI="https://github.com/aussierobots/${PN}-release/archive/release/galactic/${PN}/0.2.3-4.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/ublox_dgnss_node
	ros-galactic/ublox_ubx_interfaces
	ros-galactic/ublox_ubx_msgs
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
