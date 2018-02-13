# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="<p>\
			amcl is a probabilistic localization system for a robot mo[...]"
HOMEPAGE="http://wiki.ros.org/amcl"
SRC_URI="https://github.com/ros2-gbp/navigation-release/archive/release/ardent/${PN}/3.0.0-1.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-ardent/geometry_msgs
	ros-ardent/nav_msgs
	ros-ardent/rclcpp
	ros-ardent/rcutils
	ros-ardent/sensor_msgs
	ros-ardent/std_srvs
	ros-ardent/tf2
	ros-ardent/tf2_geometry_msgs
	ros-ardent/tf2_msgs
	ros-ardent/tf2_ros
	test? ( ros-ardent/map_server )
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake_auto
	ros-ardent/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
