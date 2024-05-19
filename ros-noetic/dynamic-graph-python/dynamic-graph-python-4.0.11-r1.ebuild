# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Dynamic graph library Python bindings"
HOMEPAGE="https://github.com/stack-of-tasks/dynamic-graph-python"
SRC_URI="https://github.com/stack-of-tasks/${PN}-ros-release/archive/release/noetic/${PN}/4.0.11-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/catkin
	ros-noetic/dynamic-graph
	ros-noetic/eigenpy
	dev-libs/boost[python]
	dev-cpp/eigen
	dev-lang/python
	dev-python/numpy
	dev-lang/python
	dev-python/numpy
"
DEPEND="${RDEPEND}
	dev-util/cmake
	app-doc/doxygen
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
