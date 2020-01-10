# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree."
HOMEPAGE="http://wiki.ros.org/rqt_tf_tree"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/eloquent/${PN}/1.0.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/python_qt_binding
	ros-eloquent/qt_dotgraph
	ros-eloquent/rclpy
	ros-eloquent/rqt_graph
	ros-eloquent/rqt_gui
	ros-eloquent/rqt_gui_py
	ros-eloquent/tf2_msgs
	ros-eloquent/tf2_ros
	test? ( dev-python/mock )
	test? ( dev-python/mock )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
