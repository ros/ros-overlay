# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Cartographer is a system that provides real-time simultaneous localization\[...]"
HOMEPAGE="https://github.com/googlecartographer/cartographer_ros"
SRC_URI="https://github.com/ros-gbp/cartographer_ros-release/archive/release/lunar/${PN}/0.2.0-1.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/cartographer
	ros-lunar/cartographer_ros
	ros-lunar/cartographer_ros_msgs
	ros-lunar/eigen_conversions
	ros-lunar/message_runtime
	ros-lunar/roscpp
	ros-lunar/roslib
	ros-lunar/rviz
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
	dev-qt/qtcore:5
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	sys-devel/gcc
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
