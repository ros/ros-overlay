# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Code that generates random views of an object"
HOMEPAGE="http://ecto.willowgarage.com/recognition"
SRC_URI="https://github.com/ros-gbp/object_recognition_renderer-release/archive/release/indigo/object_recognition_renderer/0.2.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cv_bridge
	media-libs/assimp
	dev-libs/boost
	media-libs/freeimage
	media-libs/freeglut
	media-libs/devil
	media-libs/mesa
	x11-libs/libXi
	x11-libs/libXmu
	media-libs/libsdl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	media-libs/assimp
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

