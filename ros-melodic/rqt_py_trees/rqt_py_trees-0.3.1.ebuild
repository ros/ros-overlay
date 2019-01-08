# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rqt_py_trees provides a GUI plugin for visualizing py_trees behaviour trees[...]"
HOMEPAGE="http://ros.org/wiki/rqt_py_trees"
SRC_URI="https://github.com/stonier/${PN}-release/archive/release/melodic/${PN}/0.3.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/py_trees
	ros-melodic/py_trees_msgs
	ros-melodic/qt_dotgraph
	ros-melodic/rospy
	ros-melodic/rqt_bag
	ros-melodic/rqt_graph
	ros-melodic/rqt_gui
	ros-melodic/rqt_gui_py
	ros-melodic/unique_id
	dev-python/pygraphviz
	dev-python/rospkg
	dev-python/termcolor
	test? ( dev-python/mock )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
