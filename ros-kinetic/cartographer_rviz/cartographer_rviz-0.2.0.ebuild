# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Cartographer is a system that provides real-time simultaneous localization\[...]"
HOMEPAGE="https://github.com/googlecartographer/cartographer_ros"
SRC_URI="https://github.com/ros-gbp/cartographer_ros-release/archive/release/kinetic/${PN}/0.2.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cartographer
	ros-kinetic/cartographer_ros_msgs
	ros-kinetic/eigen_conversions
	ros-kinetic/message_runtime
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/rviz
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
	dev-qt/qtcore:5
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	sys-devel/gcc
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
