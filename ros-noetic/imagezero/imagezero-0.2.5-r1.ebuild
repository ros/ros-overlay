# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="ImageZero is a fast lossless image compression algorithm for RGB color photos."
HOMEPAGE="https://github.com/swri-robotics/imagezero_transport"
SRC_URI="https://github.com/swri-robotics-gbp/${PN}_transport-release/archive/release/noetic/${PN}/0.2.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
