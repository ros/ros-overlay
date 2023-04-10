# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="An extension of the Flexible Collision Library."
HOMEPAGE="https://github.com/humanoid-path-planner/hpp-fcl"
SRC_URI="https://github.com/humanoid-path-planner/${PN}-ros-release/archive/release/melodic/${PN}/2.2.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/catkin
	ros-melodic/eigenpy
	ros-melodic/octomap
	media-libs/assimp
	dev-libs/boost[python]
	dev-cpp/eigen
	dev-lang/python
	dev-python/numpy
"
DEPEND="${RDEPEND}
	dev-util/cmake
	app-doc/doxygen
	dev-vcs/git
	dev-python/lxml
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
