# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree."
HOMEPAGE="http://wiki.ros.org/rqt_tf_tree"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/lunar/${PN}/0.6.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/python_qt_binding
	ros-lunar/qt_dotgraph
	ros-lunar/rospy
	ros-lunar/rqt_graph
	ros-lunar/rqt_gui
	ros-lunar/rqt_gui_py
	ros-lunar/tf2
	ros-lunar/tf2_msgs
	ros-lunar/tf2_ros
	dev-python/rospkg
	test? ( dev-python/mock )
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
