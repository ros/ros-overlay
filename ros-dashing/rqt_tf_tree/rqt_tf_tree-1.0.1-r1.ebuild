# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree."
HOMEPAGE="http://wiki.ros.org/rqt_tf_tree"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/dashing/${PN}/1.0.1-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/python_qt_binding
	ros-dashing/qt_dotgraph
	ros-dashing/rclpy
	ros-dashing/rqt_graph
	ros-dashing/rqt_gui
	ros-dashing/rqt_gui_py
	ros-dashing/tf2_msgs
	ros-dashing/tf2_ros
	test? ( dev-python/mock )
	test? ( dev-python/mock )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
