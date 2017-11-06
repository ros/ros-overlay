# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="euscollada"
HOMEPAGE="http://ros.org/wiki/euscollada"
SRC_URI="https://github.com/tork-a/jsk_model_tools-release/archive/release/indigo/euscollada/0.3.5-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/assimp_devel
	ros-indigo/collada_parser
	ros-indigo/collada_urdf
	ros-indigo/resource_retriever
	ros-indigo/roscpp
	ros-indigo/rospack
	ros-indigo/rostest
	ros-indigo/tf
	ros-indigo/urdf
	dev-libs/collada-dom
	media-libs/qhull
	dev-libs/urdfdom
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/mk
	ros-indigo/rosboost_cfg
	ros-indigo/rosbuild
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
