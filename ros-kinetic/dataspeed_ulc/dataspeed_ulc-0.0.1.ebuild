# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="CAN interface to the Universal Lat/Lon Controller \(ULC\) firmware"
HOMEPAGE="https://bitbucket.org/dataspeedinc/dataspeed_ulc_ros"
SRC_URI="https://github.com/DataspeedInc-release/${PN}_ros-release/archive/release/kinetic/${PN}/0.0.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dataspeed_ulc_can
	ros-kinetic/dataspeed_ulc_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
