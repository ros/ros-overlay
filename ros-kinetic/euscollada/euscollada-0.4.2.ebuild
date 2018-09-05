# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="euscollada"
HOMEPAGE="http://ros.org/wiki/euscollada"
SRC_URI="https://github.com/tork-a/jsk_model_tools-release/archive/release/kinetic/${PN}/0.4.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/assimp_devel
	ros-kinetic/collada_parser
	ros-kinetic/collada_urdf
	ros-kinetic/resource_retriever
	ros-kinetic/roscpp
	ros-kinetic/rospack
	ros-kinetic/rostest
	ros-kinetic/tf
	ros-kinetic/urdf
	test? ( ros-kinetic/openhrp3 )
	test? ( ros-kinetic/pr2_description )
	test? ( ros-kinetic/roseus )
	dev-libs/collada-dom
	media-libs/qhull
	dev-libs/urdfdom
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
	ros-kinetic/mk
	ros-kinetic/rosboost_cfg
	ros-kinetic/rosbuild
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
