# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree."
HOMEPAGE="http://wiki.ros.org/rqt_tf_tree"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.6.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/python_qt_binding
	ros-melodic/qt_dotgraph
	ros-melodic/rospy
	ros-melodic/rqt_graph
	ros-melodic/rqt_gui
	ros-melodic/rqt_gui_py
	ros-melodic/tf2
	ros-melodic/tf2_msgs
	ros-melodic/tf2_ros
	dev-python/rospkg
	test? ( dev-python/mock )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
