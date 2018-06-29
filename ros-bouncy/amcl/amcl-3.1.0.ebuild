# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="<p>\
			amcl is a probabilistic localization system for a robot mo[...]"
HOMEPAGE="http://wiki.ros.org/amcl"
SRC_URI="https://github.com/ros2-gbp/navigation-release/archive/release/bouncy/${PN}/3.1.0-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/geometry_msgs
	ros-bouncy/nav_msgs
	ros-bouncy/rclcpp
	ros-bouncy/rcutils
	ros-bouncy/sensor_msgs
	ros-bouncy/std_srvs
	ros-bouncy/tf2
	ros-bouncy/tf2_geometry_msgs
	ros-bouncy/tf2_msgs
	ros-bouncy/tf2_ros
	test? ( ros-bouncy/map_server )
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake_auto
	ros-bouncy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
