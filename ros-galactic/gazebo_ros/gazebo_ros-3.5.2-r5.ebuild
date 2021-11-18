# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Utilities to interface with <a href=\"http://gazebosim.org\">Gazebo</a> thr[...]"
HOMEPAGE="http://gazebosim.org/tutorials?cat=connect_ros"
SRC_URI="https://github.com/ros2-gbp/${PN}_pkgs-release/archive/release/galactic/${PN}/3.5.2-5.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/builtin_interfaces
	ros-galactic/gazebo_dev
	ros-galactic/gazebo_msgs
	ros-galactic/geometry_msgs
	ros-galactic/launch_ros
	ros-galactic/rcl
	ros-galactic/rclcpp
	ros-galactic/rclpy
	ros-galactic/rmw
	ros-galactic/sensor_msgs
	ros-galactic/std_srvs
	ros-galactic/tinyxml_vendor
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/geometry_msgs )
	test? ( ros-galactic/launch_testing_ament_cmake )
	test? ( ros-galactic/ros2run )
	test? ( ros-galactic/sensor_msgs )
	test? ( ros-galactic/std_msgs )
	dev-python/lxml
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
