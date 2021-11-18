# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree."
HOMEPAGE="http://wiki.ros.org/rqt_tf_tree"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/1.0.3-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/python_qt_binding
	ros-galactic/qt_dotgraph
	ros-galactic/rclpy
	ros-galactic/rqt_graph
	ros-galactic/rqt_gui
	ros-galactic/rqt_gui_py
	ros-galactic/tf2_msgs
	ros-galactic/tf2_ros
	test? ( dev-python/mock )
	test? ( dev-python/mock )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
