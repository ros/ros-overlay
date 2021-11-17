# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This package provides a gui program as well as a rviz plugin to publish sta[...]"
HOMEPAGE="http://wiki.ros.org/agni_tf_tools"
SRC_URI="https://github.com/ubi-agni-gbp/${PN}-release/archive/release/noetic/${PN}/0.1.6-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/roscpp
	ros-noetic/rviz
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-cpp/eigen
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
