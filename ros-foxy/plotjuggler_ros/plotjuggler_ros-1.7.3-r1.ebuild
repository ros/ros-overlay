# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="PlotJuggler plugin for ROS"
HOMEPAGE="https://github.com/facontidavide/PlotJuggler"
SRC_URI="https://github.com/PlotJuggler/plotjuggler-ros-plugins-release/archive/release/foxy/${PN}/1.7.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="AGPLv3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/diagnostic_msgs
	ros-foxy/fastcdr
	ros-foxy/geometry_msgs
	ros-foxy/nav_msgs
	ros-foxy/plotjuggler
	ros-foxy/plotjuggler_msgs
	ros-foxy/rclcpp
	ros-foxy/rcpputils
	ros-foxy/rosbag2
	ros-foxy/rosbag2_transport
	ros-foxy/sensor_msgs
	ros-foxy/tf2_msgs
	ros-foxy/tf2_ros
	sys-devel/binutils
	dev-libs/boost[python]
	dev-qt/qtsvg:5
	dev-qt/qtwebsockets:5
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
