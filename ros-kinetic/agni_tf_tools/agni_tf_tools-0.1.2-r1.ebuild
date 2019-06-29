# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides a gui program as well as a rviz plugin to publish sta[...]"
HOMEPAGE="http://wiki.ros.org/agni_tf_tools"
SRC_URI="https://github.com/ubi-agni-gbp/${PN}-release/archive/release/kinetic/${PN}/0.1.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/roscpp
	ros-kinetic/rviz
	ros-kinetic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-cpp/eigen
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
