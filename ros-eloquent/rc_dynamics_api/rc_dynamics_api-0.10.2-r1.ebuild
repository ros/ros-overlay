# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The rc_dynamics_api provides an API for easy handling of the dynamic-state [...]"
HOMEPAGE="http://rc-visard.com"
SRC_URI="https://github.com/roboception-gbp/${PN}-release/archive/release/eloquent/${PN}/0.10.2-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	net-misc/curl
	dev-libs/protobuf
"
DEPEND="${RDEPEND}
	dev-util/cmake
	dev-libs/protobuf
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
