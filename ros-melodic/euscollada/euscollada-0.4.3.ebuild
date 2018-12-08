# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="euscollada"
HOMEPAGE="http://ros.org/wiki/euscollada"
SRC_URI="https://github.com/tork-a/jsk_model_tools-release/archive/release/melodic/${PN}/0.4.3-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/assimp_devel
	ros-melodic/collada_parser
	ros-melodic/collada_urdf
	ros-melodic/resource_retriever
	ros-melodic/roscpp
	ros-melodic/rospack
	ros-melodic/rostest
	ros-melodic/tf
	ros-melodic/urdf
	test? ( ros-melodic/openhrp3 )
	test? ( ros-melodic/pr2_description )
	test? ( ros-melodic/roseus )
	dev-libs/collada-dom
	media-libs/qhull
	dev-libs/urdfdom
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
	ros-melodic/mk
	ros-melodic/rosboost_cfg
	ros-melodic/rosbuild
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
