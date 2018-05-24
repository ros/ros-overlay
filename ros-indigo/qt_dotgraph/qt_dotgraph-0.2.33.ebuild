# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="qt_dotgraph provides helpers to work with dot graphs."
HOMEPAGE="http://ros.org/wiki/qt_dotgraph"
SRC_URI="https://github.com/ros-gbp/qt_gui_core-release/archive/release/indigo/${PN}/0.2.33-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/python_qt_binding
	dev-python/pydot
	test? ( dev-python/pygraphviz )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
