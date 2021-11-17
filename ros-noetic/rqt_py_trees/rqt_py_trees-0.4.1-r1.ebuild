# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="rqt_py_trees provides a GUI plugin for visualizing py_trees behaviour trees[...]"
HOMEPAGE="http://ros.org/wiki/rqt_py_trees"
SRC_URI="https://github.com/stonier/${PN}-release/archive/release/noetic/${PN}/0.4.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/py_trees
	ros-noetic/py_trees_msgs
	ros-noetic/qt_dotgraph
	ros-noetic/rospy
	ros-noetic/rqt_bag
	ros-noetic/rqt_graph
	ros-noetic/rqt_gui
	ros-noetic/rqt_gui_py
	ros-noetic/unique_id
	dev-python/pygraphviz
	dev-python/rospkg
	dev-python/termcolor
	test? ( dev-python/mock )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
