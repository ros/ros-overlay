# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The OctoMap library implements a 3D occupancy grid mapping approach, provid[...]"
HOMEPAGE="http://octomap.github.io"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/foxy/${PN}/1.9.5-2.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
