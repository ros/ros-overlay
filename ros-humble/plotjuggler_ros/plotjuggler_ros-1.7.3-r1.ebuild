# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="PlotJuggler plugin for ROS"
HOMEPAGE="https://github.com/facontidavide/PlotJuggler"
SRC_URI="https://github.com/ros2-gbp/plotjuggler-ros-plugins-release/archive/release/humble/${PN}/1.7.3-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="AGPLv3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/diagnostic_msgs
	ros-humble/fastcdr
	ros-humble/geometry_msgs
	ros-humble/nav_msgs
	ros-humble/plotjuggler
	ros-humble/plotjuggler_msgs
	ros-humble/rclcpp
	ros-humble/rcpputils
	ros-humble/rosbag2
	ros-humble/rosbag2_transport
	ros-humble/sensor_msgs
	ros-humble/tf2_msgs
	ros-humble/tf2_ros
	sys-devel/binutils
	dev-libs/boost[python]
	dev-qt/qtsvg:5
	dev-qt/qtwebsockets:5
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
