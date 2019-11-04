# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Utilities to interface with <a href=\"http://gazebosim.org\">Gazebo</a> thr[...]"
HOMEPAGE="http://gazebosim.org/tutorials?cat=connect_ros"
SRC_URI="https://github.com/ros2-gbp/${PN}_pkgs-release/archive/release/eloquent/${PN}/3.4.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/builtin_interfaces
	ros-eloquent/gazebo_dev
	ros-eloquent/gazebo_msgs
	ros-eloquent/geometry_msgs
	ros-eloquent/launch_ros
	ros-eloquent/rclcpp
	ros-eloquent/rclpy
	ros-eloquent/sensor_msgs
	ros-eloquent/std_srvs
	ros-eloquent/tinyxml_vendor
	test? ( ros-eloquent/ament_cmake_gtest )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	test? ( ros-eloquent/geometry_msgs )
	test? ( ros-eloquent/sensor_msgs )
	test? ( ros-eloquent/std_msgs )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
