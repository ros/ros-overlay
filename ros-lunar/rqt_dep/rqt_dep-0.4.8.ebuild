# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="rqt_dep provides a GUI plugin for visualizing the ROS dependency graph."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rqt_dep-release/archive/release/lunar/rqt_dep/0.4.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/python_qt_binding
	ros-lunar/qt_dotgraph
	ros-lunar/qt_gui
	ros-lunar/qt_gui_py_common
	ros-lunar/rqt_graph
	ros-lunar/rqt_gui_py
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

