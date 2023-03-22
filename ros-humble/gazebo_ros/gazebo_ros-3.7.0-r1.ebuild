# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Utilities to interface with <a href=\"http://gazebosim.org\">Gazebo</a> thr[...]"
HOMEPAGE="http://gazebosim.org/tutorials?cat=connect_ros"
SRC_URI="https://github.com/ros2-gbp/${PN}_pkgs-release/archive/release/humble/${PN}/3.7.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/builtin_interfaces
	ros-humble/gazebo_dev
	ros-humble/gazebo_msgs
	ros-humble/geometry_msgs
	ros-humble/launch_ros
	ros-humble/rcl
	ros-humble/rclcpp
	ros-humble/rclpy
	ros-humble/rmw
	ros-humble/sensor_msgs
	ros-humble/std_srvs
	ros-humble/tinyxml_vendor
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/geometry_msgs )
	test? ( ros-humble/launch_testing_ament_cmake )
	test? ( ros-humble/ros2run )
	test? ( ros-humble/sensor_msgs )
	test? ( ros-humble/std_msgs )
	dev-python/lxml
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
