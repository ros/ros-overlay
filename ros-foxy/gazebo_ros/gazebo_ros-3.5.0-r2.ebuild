# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Utilities to interface with <a href=\"http://gazebosim.org\">Gazebo</a> thr[...]"
HOMEPAGE="http://gazebosim.org/tutorials?cat=connect_ros"
SRC_URI="https://github.com/ros2-gbp/${PN}_pkgs-release/archive/release/foxy/${PN}/3.5.0-2.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/builtin_interfaces
	ros-foxy/gazebo_dev
	ros-foxy/gazebo_msgs
	ros-foxy/geometry_msgs
	ros-foxy/launch_ros
	ros-foxy/rcl
	ros-foxy/rclcpp
	ros-foxy/rclpy
	ros-foxy/rmw
	ros-foxy/sensor_msgs
	ros-foxy/std_srvs
	ros-foxy/tinyxml_vendor
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/geometry_msgs )
	test? ( ros-foxy/launch_testing_ament_cmake )
	test? ( ros-foxy/ros2run )
	test? ( ros-foxy/sensor_msgs )
	test? ( ros-foxy/std_msgs )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
