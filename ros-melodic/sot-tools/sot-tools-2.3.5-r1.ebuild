# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Miscellanous entities for the stack of tasks"
HOMEPAGE="http://github.com/stack-of-tasks/sot-tools"
SRC_URI="https://github.com/stack-of-tasks/${PN}-ros-release/archive/release/melodic/${PN}/2.3.5-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/catkin
	ros-melodic/dynamic-graph-python
	ros-melodic/sot-core
"
DEPEND="${RDEPEND}
	dev-util/cmake
	app-doc/doxygen
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
