# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Wrapper around ogre3d, it provides a fixed CMake module and an ExternalProj[...]"
HOMEPAGE="https://www.ogre3d.org/"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/foxy/${PN}/8.2.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 MIT )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	media-libs/freetype
	media-libs/freetype
	x11-libs/libX11
	x11-libs/libXaw
	x11-libs/libXrandr
	virtual/opengl
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	dev-vcs/git
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
