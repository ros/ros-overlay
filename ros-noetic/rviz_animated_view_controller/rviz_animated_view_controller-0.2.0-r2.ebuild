# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A rviz view controller featuring smooth transitions."
HOMEPAGE="http://ros.org/wiki/rviz_animated_view_controller"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/0.2.0-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cmake_modules
	ros-noetic/cv_bridge
	ros-noetic/geometry_msgs
	ros-noetic/image_transport
	ros-noetic/pluginlib
	ros-noetic/rviz
	ros-noetic/std_msgs
	ros-noetic/view_controller_msgs
	dev-cpp/eigen
	dev-qt/qtcore:4
	virtual/opengl
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
