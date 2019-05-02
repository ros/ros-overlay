# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A simple bridge between ROS 1 and ROS 2"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/crystal/${PN}/0.6.2-2.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/actionlib_msgs
	ros-crystal/builtin_interfaces
	ros-crystal/diagnostic_msgs
	ros-crystal/example_interfaces
	ros-crystal/gazebo_msgs
	ros-crystal/geometry_msgs
	ros-crystal/nav_msgs
	ros-crystal/rclcpp
	ros-crystal/rcutils
	ros-crystal/sensor_msgs
	ros-crystal/shape_msgs
	ros-crystal/std_msgs
	ros-crystal/std_srvs
	ros-crystal/stereo_msgs
	ros-crystal/tf2_msgs
	ros-crystal/trajectory_msgs
	ros-crystal/visualization_msgs
	test? ( ros-crystal/ament_cmake_pytest )
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/ament_lint_common )
	test? ( ros-crystal/demo_nodes_cpp )
	test? ( ros-crystal/diagnostic_msgs )
	test? ( ros-crystal/launch )
	test? ( ros-crystal/ros2run )
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
	ros-crystal/ament_index_python
	ros-crystal/rmw_implementation_cmake
	ros-crystal/rosidl_cmake
	ros-crystal/rosidl_parser
	virtual/pkgconfig
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
