# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree."
HOMEPAGE="http://wiki.ros.org/rqt_tf_tree"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/indigo/${PN}/0.6.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/python_qt_binding
	ros-indigo/qt_dotgraph
	ros-indigo/rospy
	ros-indigo/rqt_graph
	ros-indigo/rqt_gui
	ros-indigo/rqt_gui_py
	ros-indigo/tf2
	ros-indigo/tf2_msgs
	ros-indigo/tf2_ros
	dev-python/rospkg
	test? ( dev-python/mock )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
