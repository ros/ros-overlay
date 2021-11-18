# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="turtlesim is a tool made for teaching ROS and ROS packages."
HOMEPAGE="http://www.ros.org/wiki/turtlesim"
SRC_URI="https://github.com/ros2-gbp/ros_tutorials-release/archive/release/galactic/${PN}/1.3.3-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/ament_index_cpp
	ros-galactic/geometry_msgs
	ros-galactic/rclcpp
	ros-galactic/rclcpp_action
	ros-galactic/rosidl_default_runtime
	ros-galactic/std_msgs
	ros-galactic/std_srvs
	dev-qt/qtcore:5
	dev-qt/qtgui:5
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/rosidl_default_generators
	dev-qt/qtcore:5
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
