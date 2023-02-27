# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Static reflection for enums \(to string, from string, iteration\) for moder[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/nobleo/${PN}-release/archive/release/galactic/${PN}/0.8.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
