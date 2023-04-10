# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A rviz view controller featuring smooth transitions."
HOMEPAGE="http://ros.org/wiki/rviz_animated_view_controller"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.2.0-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cmake_modules
	ros-melodic/cv_bridge
	ros-melodic/geometry_msgs
	ros-melodic/image_transport
	ros-melodic/pluginlib
	ros-melodic/rviz
	ros-melodic/std_msgs
	ros-melodic/view_controller_msgs
	dev-cpp/eigen
	virtual/opengl
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
