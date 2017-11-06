# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="In order to use, please add the following line in your bashrc:"
HOMEPAGE="http://openrave.org"
SRC_URI="https://github.com/tork-a/openrave_planning-release/archive/release/indigo/openrave/0.0.5-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="( CC-BY-SA-3.0 CC-BY-SA-3.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/collada_robots
	ros-indigo/std_msgs
	media-libs/assimp
	dev-libs/boost
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
	ros-indigo/catkin
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

