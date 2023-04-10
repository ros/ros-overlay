# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Eiquadprog a QP solver using active sets"
HOMEPAGE="git@github.com:stack-of-tasks/eiquadprog.git"
SRC_URI="https://github.com/stack-of-tasks/${PN}-ros-release/archive/release/foxy/${PN}/1.2.2-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="LGPL-3.0-only"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/ament_cmake
	dev-libs/boost[python]
	dev-cpp/eigen
	media-gfx/graphviz
"
DEPEND="${RDEPEND}
	dev-util/cmake
	app-doc/doxygen
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
