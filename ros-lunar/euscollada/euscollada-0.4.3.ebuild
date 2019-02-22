# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="euscollada"
HOMEPAGE="http://ros.org/wiki/euscollada"
SRC_URI="https://github.com/tork-a/jsk_model_tools-release/archive/release/lunar/${PN}/0.4.3-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/assimp_devel
	ros-lunar/collada_parser
	ros-lunar/collada_urdf
	ros-lunar/resource_retriever
	ros-lunar/roscpp
	ros-lunar/rospack
	ros-lunar/rostest
	ros-lunar/tf
	ros-lunar/urdf
	test? ( ros-lunar/openhrp3 )
	test? ( ros-lunar/pr2_description )
	test? ( ros-lunar/roseus )
	dev-libs/collada-dom
	media-libs/qhull
	dev-libs/urdfdom
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
	ros-lunar/mk
	ros-lunar/rosboost_cfg
	ros-lunar/rosbuild
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
