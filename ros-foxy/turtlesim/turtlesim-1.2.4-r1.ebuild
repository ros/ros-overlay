# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="turtlesim is a tool made for teaching ROS and ROS packages."
HOMEPAGE="http://www.ros.org/wiki/turtlesim"
SRC_URI="https://github.com/ros2-gbp/ros_tutorials-release/archive/release/foxy/${PN}/1.2.4-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/ament_index_cpp
	ros-foxy/geometry_msgs
	ros-foxy/rclcpp
	ros-foxy/rclcpp_action
	ros-foxy/rosidl_default_runtime
	ros-foxy/std_msgs
	ros-foxy/std_srvs
	dev-qt/qtcore:5
	dev-qt/qtgui:5
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/rosidl_default_generators
	dev-qt/qtcore:5
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
