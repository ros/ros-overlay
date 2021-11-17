# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Pythonic implementation of behaviour trees."
HOMEPAGE="http://py-trees.readthedocs.io"
SRC_URI="https://github.com/stonier/${PN}-release/archive/release/noetic/${PN}/0.7.6-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-python/pydot
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
