# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Cartographer is a system that provides real-time simultaneous localization\[...]"
HOMEPAGE="https://github.com/googlecartographer/cartographer_ros"
SRC_URI="https://github.com/ros-gbp/cartographer_ros-release/archive/release/melodic/${PN}/1.0.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cartographer
	ros-melodic/cartographer_ros
	ros-melodic/cartographer_ros_msgs
	ros-melodic/eigen_conversions
	ros-melodic/message_runtime
	ros-melodic/roscpp
	ros-melodic/roslib
	ros-melodic/rviz
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
	dev-qt/qtcore:5
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	sys-devel/gcc
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
