# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Message and service definitions used in internal tests for rosbridge packages."
HOMEPAGE="http://ros.org/wiki/rosbridge_library"
SRC_URI="https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/galactic/${PN}/1.3.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/builtin_interfaces
	ros-galactic/geometry_msgs
	ros-galactic/rclpy
	ros-galactic/rosidl_default_runtime
	ros-galactic/std_msgs
	test? ( ros-galactic/actionlib_msgs )
	test? ( ros-galactic/ament_cmake_pytest )
	test? ( ros-galactic/builtin_interfaces )
	test? ( ros-galactic/diagnostic_msgs )
	test? ( ros-galactic/example_interfaces )
	test? ( ros-galactic/geometry_msgs )
	test? ( ros-galactic/nav_msgs )
	test? ( ros-galactic/sensor_msgs )
	test? ( ros-galactic/std_msgs )
	test? ( ros-galactic/std_srvs )
	test? ( ros-galactic/stereo_msgs )
	test? ( ros-galactic/tf2_msgs )
	test? ( ros-galactic/trajectory_msgs )
	test? ( ros-galactic/visualization_msgs )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
