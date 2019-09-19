# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Utilities to interface with <a href=\"http://gazebosim.org\">Gazebo</a> thr[...]"
HOMEPAGE="http://gazebosim.org/tutorials?cat=connect_ros"
SRC_URI="https://github.com/ros2-gbp/${PN}_pkgs-release/archive/release/dashing/${PN}/3.3.4-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/builtin_interfaces
	ros-dashing/gazebo_dev
	ros-dashing/gazebo_msgs
	ros-dashing/geometry_msgs
	ros-dashing/launch_ros
	ros-dashing/rclcpp
	ros-dashing/rclpy
	ros-dashing/sensor_msgs
	ros-dashing/std_srvs
	ros-dashing/tinyxml_vendor
	test? ( ros-dashing/ament_cmake_gtest )
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
	test? ( ros-dashing/geometry_msgs )
	test? ( ros-dashing/sensor_msgs )
	test? ( ros-dashing/std_msgs )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
