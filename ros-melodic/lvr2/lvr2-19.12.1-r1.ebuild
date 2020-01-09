# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The Las Vegas Surface Reconstruction Toolkit is an Open Source toolkit to r[...]"
HOMEPAGE="https://www.las-vegas.uni-osnabrueck.de/"
SRC_URI="https://github.com/uos-gbp/${PN}-release/archive/release/melodic/${PN}/19.12.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-libs/boost[python]
	dev-cpp/eigen
	media-libs/freeglut
	sci-libs/flann
	sci-libs/gsl
	sci-libs/hdf5
	media-libs/opencv
	dev-qt/qtopengl:5
	sci-libs/vtk[boost,python,qt5]
	sci-libs/vtk[qt5,rendering]
	x11-libs/libXi
	x11-libs/libXmu
	app-arch/lz4
	virtual/opencl
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
