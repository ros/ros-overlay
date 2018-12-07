# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains a tool to convert Unified Robot Description Format \([...]"
HOMEPAGE="http://ros.org/wiki/collada_urdf"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/1.12.12-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/collada_parser
	ros-melodic/geometric_shapes
	ros-melodic/resource_retriever
	ros-melodic/rosconsole
	ros-melodic/urdf
	media-libs/assimp
	dev-libs/collada-dom
	dev-libs/urdfdom
	dev-libs/urdfdom_headers
"
DEPEND="${RDEPEND}
	ros-melodic/angles
	ros-melodic/catkin
	ros-melodic/cmake_modules
	media-libs/assimp
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
