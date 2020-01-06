# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rqt_graph provides a GUI plugin for visualizing the ROS\
	  computation [...]"
HOMEPAGE="http://wiki.ros.org/rqt_graph"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.4.11-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/python_qt_binding
	ros-melodic/qt_dotgraph
	ros-melodic/rosgraph
	ros-melodic/rosgraph_msgs
	ros-melodic/roslib
	ros-melodic/rosnode
	ros-melodic/rospy
	ros-melodic/rosservice
	ros-melodic/rostopic
	ros-melodic/rqt_gui
	ros-melodic/rqt_gui_py
	dev-python/rospkg
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
