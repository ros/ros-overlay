# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="RViz display types and tools for the mesh_msgs package."
HOMEPAGE="http://wiki.ros.org/ros_mesh_tools/rviz_mesh_plugin"
SRC_URI="https://github.com/uos-gbp/mesh-tools/archive/release/noetic/${PN}/1.0.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/mesh_msgs
	ros-noetic/roscpp
	ros-noetic/rviz
	ros-noetic/std_msgs
	ros-noetic/tf2_ros
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
