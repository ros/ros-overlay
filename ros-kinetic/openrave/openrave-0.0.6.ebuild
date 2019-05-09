# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="In order to use, please add the following line in your bashrc:"
HOMEPAGE="http://openrave.org"
SRC_URI="https://github.com/tork-a/${PN}_planning-release/archive/release/kinetic/${PN}/0.0.6-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="( GPL-1 Version 2.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/collada_robots
	ros-kinetic/std_msgs
	media-libs/assimp
	dev-libs/boost[python]
	sci-physics/bullet
	dev-libs/collada-dom
	virtual/ffmpeg
	dev-python/ipython
	media-libs/glew
	virtual/lapack
	media-libs/libogg
	media-libs/qhull
	dev-qt/qtcore:4
	media-libs/SoQt
	media-libs/x264
	dev-games/ode
	dev-libs/libpcre
	dev-libs/libpcre
	dev-lang/python
	dev-python/h5py
	dev-python/numpy
	sci-libs/scipy
	dev-python/sympy
	sys-libs/zlib
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-vcs/git
	dev-libs/libxml2
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
