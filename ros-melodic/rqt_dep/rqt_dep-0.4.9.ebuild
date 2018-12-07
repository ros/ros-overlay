# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rqt_dep provides a GUI plugin for visualizing the ROS dependency graph."
HOMEPAGE="http://wiki.ros.org/rqt_dep"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.4.9-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/python_qt_binding
	ros-melodic/qt_dotgraph
	ros-melodic/qt_gui
	ros-melodic/qt_gui_py_common
	ros-melodic/rqt_graph
	ros-melodic/rqt_gui_py
	dev-python/rospkg
	test? ( dev-python/mock )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
