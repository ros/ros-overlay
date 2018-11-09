# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The libg2o library from http://openslam.org/g2o.html"
HOMEPAGE="https://github.com/RainerKuemmerle/g2o"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/2018.3.25-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/catkin
	dev-libs/boost
	dev-cpp/eigen
	virtual/opengl
	sci-libs/suitesparse
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
