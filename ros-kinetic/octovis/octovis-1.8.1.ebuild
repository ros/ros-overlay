# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="octovis is visualization tool for the OctoMap library based on Qt and libQGLView"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/octomap-release/archive/release/kinetic/octovis/1.8.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/catkin
	ros-kinetic/octomap
	x11-libs/libQGLViewer
	dev-qt/qtopengl:4
	dev-qt/qtgui:4
"
DEPEND="${RDEPEND}
	dev-util/cmake
	x11-libs/libQGLViewer
	dev-qt/qtcore:4
	dev-qt/qtopengl:4
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

