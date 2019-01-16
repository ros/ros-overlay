# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Wrapper around uncrustify, providing nothing but a dependency on uncrustify[...]"
HOMEPAGE="https://github.com/uncrustify/uncrustify"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/crystal/${PN}/1.1.0-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 GPL-2 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	uncrustify
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
