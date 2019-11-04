# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="turtlesim is a tool made for teaching ROS and ROS packages."
HOMEPAGE="http://www.ros.org/wiki/turtlesim"
SRC_URI="https://github.com/ros2-gbp/ros_tutorials-release/archive/release/eloquent/${PN}/1.0.2-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/ament_index_cpp
	ros-eloquent/geometry_msgs
	ros-eloquent/rclcpp
	ros-eloquent/rclcpp_action
	ros-eloquent/rosidl_default_runtime
	ros-eloquent/std_msgs
	ros-eloquent/std_srvs
	dev-qt/qtcore:5
	dev-qt/qtgui:5
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	ros-eloquent/rosidl_default_generators
	dev-qt/qtcore:5
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
