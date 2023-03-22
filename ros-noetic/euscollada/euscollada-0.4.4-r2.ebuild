# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="euscollada"
HOMEPAGE="http://ros.org/wiki/euscollada"
SRC_URI="https://github.com/tork-a/jsk_model_tools-release/archive/release/noetic/${PN}/0.4.4-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/assimp_devel
	ros-noetic/collada_parser
	ros-noetic/collada_urdf
	ros-noetic/resource_retriever
	ros-noetic/roscpp
	ros-noetic/rospack
	ros-noetic/rostest
	ros-noetic/tf
	ros-noetic/urdf
	test? ( ros-noetic/openhrp3 )
	test? ( ros-noetic/pr2_description )
	test? ( ros-noetic/roseus )
	dev-libs/collada-dom
	media-libs/qhull
	dev-libs/urdfdom
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
	ros-noetic/mk
	ros-noetic/rosboost_cfg
	ros-noetic/rosbuild
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
