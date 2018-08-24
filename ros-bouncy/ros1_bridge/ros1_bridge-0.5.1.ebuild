# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A simple bridge between ROS 1 and ROS 2"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/bouncy/${PN}/0.5.1-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/actionlib_msgs
	ros-bouncy/builtin_interfaces
	ros-bouncy/diagnostic_msgs
	ros-bouncy/example_interfaces
	ros-bouncy/geometry_msgs
	ros-bouncy/nav_msgs
	ros-bouncy/rclcpp
	ros-bouncy/rcutils
	ros-bouncy/rosgraph_msgs
	ros-bouncy/sensor_msgs
	ros-bouncy/shape_msgs
	ros-bouncy/std_msgs
	ros-bouncy/std_srvs
	ros-bouncy/stereo_msgs
	ros-bouncy/tf2_msgs
	ros-bouncy/trajectory_msgs
	ros-bouncy/visualization_msgs
	test? ( ros-bouncy/ament_cmake_pytest )
	test? ( ros-bouncy/ament_lint_auto )
	test? ( ros-bouncy/ament_lint_common )
	test? ( ros-bouncy/demo_nodes_cpp )
	test? ( ros-bouncy/diagnostic_msgs )
	test? ( ros-bouncy/launch )
	test? ( ros-bouncy/ros2run )
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake
	ros-bouncy/ament_index_python
	ros-bouncy/rmw_implementation_cmake
	ros-bouncy/rosidl_cmake
	ros-bouncy/rosidl_parser
	virtual/pkgconfig
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
