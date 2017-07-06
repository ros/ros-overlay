# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'rqt_py_trees provides a GUI plugin for visualizing py_trees behaviour trees base'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/stonier/rqt_py_trees-release/archive/release/kinetic/rqt_py_trees/0.3.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/py_trees
	ros-kinetic/py_trees_msgs
	ros-kinetic/qt_dotgraph
	ros-kinetic/rospy
	ros-kinetic/rqt_bag
	ros-kinetic/rqt_graph
	ros-kinetic/rqt_gui
	ros-kinetic/rqt_gui_py
	ros-kinetic/unique_id
	dev-python/pygraphviz
	dev-python/rospkg
	dev-python/termcolor
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

