# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Dynamic graph tutorial"
HOMEPAGE="http://github.com/stack-of-tasks/dynamic-graph-tutorial"
SRC_URI="https://github.com/stack-of-tasks/${PN}-ros-release/archive/release/noetic/${PN}/1.3.5-3.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/catkin
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-noetic/dynamic-graph
	ros-noetic/dynamic-graph-python
	dev-util/cmake
	app-doc/doxygen
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
