# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Wrapper around uncrustify, providing nothing but a dependency on uncrustify[...]"
HOMEPAGE="https://github.com/uncrustify/uncrustify"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/1.5.3-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 GPL-2.0-only )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	uncrustify
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
