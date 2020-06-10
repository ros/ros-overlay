# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="qt_dotgraph provides helpers to work with dot graphs."
HOMEPAGE="http://ros.org/wiki/qt_dotgraph"
SRC_URI="https://github.com/ros-gbp/qt_gui_core-release/archive/release/melodic/${PN}/0.4.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/python_qt_binding
	dev-python/pydot
	dev-python/pydot
	test? ( dev-python/pygraphviz )
	test? ( dev-python/pygraphviz )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
