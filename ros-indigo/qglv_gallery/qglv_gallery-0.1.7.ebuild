# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Example programs from qglviewer"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/qglv_toolkit-release/archive/release/indigo/qglv_gallery/0.1.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	media-libs/freeglut
	x11-libs/libQGLViewer
	x11-libs/libXi
	x11-libs/libXmu
	virtual/opengl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	x11-libs/libQGLViewer
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

