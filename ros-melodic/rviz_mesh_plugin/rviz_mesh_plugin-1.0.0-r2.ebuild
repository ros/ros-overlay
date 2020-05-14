# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="RViz display types and tools for the mesh_msgs package."
HOMEPAGE="http://wiki.ros.org/ros_mesh_tools/rviz_mesh_plugin"
SRC_URI="https://github.com/uos-gbp/mesh-tools/archive/release/melodic/${PN}/1.0.0-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/mesh_msgs
	ros-melodic/roscpp
	ros-melodic/rviz
	ros-melodic/std_msgs
	ros-melodic/tf2_ros
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
