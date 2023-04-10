# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ros-cmake

DESCRIPTION="An extension of the Flexible Collision Library."
HOMEPAGE="https://github.com/humanoid-path-planner/hpp-fcl"
SRC_URI="https://github.com/ros2-gbp/hpp_fcl-release/archive/release/humble/${PN}/2.3.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/eigenpy
	ros-humble/octomap
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
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
