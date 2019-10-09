# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ros-cmake

DESCRIPTION="gps_umd metapackage"
HOMEPAGE="http://ros.org/wiki/gps_umd"
SRC_URI="https://github.com/swri-robotics-gbp/${PN}-release/archive/release/dashing/${PN}/1.0.0-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/gps_msgs
	ros-dashing/gps_tools
	ros-dashing/gpsd_client
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
