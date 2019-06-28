# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Catkin macros to allow using pure python packages in usual catkin workspace[...]"
HOMEPAGE="http://github.com/asmodehn/catkin_pip"
SRC_URI="https://github.com/pyros-dev/${PN}-release/archive/release/melodic/${PN}/0.2.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	dev-lang/python
	dev-python/pip
	test? ( dev-vcs/git )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
