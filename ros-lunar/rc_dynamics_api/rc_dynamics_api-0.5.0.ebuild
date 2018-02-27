# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The rc_dynamics_api provides an API for easy handling of the dynamic-state [...]"
HOMEPAGE="http://rc-visard.com"
SRC_URI="https://github.com/roboception/${PN}-release/archive/release/lunar/${PN}/0.5.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/catkin
	net-misc/curl
	dev-libs/protobuf
"
DEPEND="${RDEPEND}
	dev-util/cmake
	dev-libs/protobuf
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
