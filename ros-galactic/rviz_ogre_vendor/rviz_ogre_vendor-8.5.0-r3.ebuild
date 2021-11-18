# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Wrapper around ogre3d, it provides a fixed CMake module and an ExternalProj[...]"
HOMEPAGE="https://www.ogre3d.org/"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/galactic/${PN}/8.5.0-3.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 MIT )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-galactic/ament_cmake_xmllint )
	test? ( ros-galactic/ament_lint_auto )
	media-libs/freetype
	media-libs/freetype
	x11-libs/libX11
	x11-libs/libXaw
	x11-libs/libXrandr
	virtual/opengl
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	dev-vcs/git
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
