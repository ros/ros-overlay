# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A simple bridge between ROS 1 and ROS 2"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/eloquent/${PN}/0.8.1-3.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/builtin_interfaces
	ros-eloquent/rclcpp
	ros-eloquent/rcutils
	ros-eloquent/std_msgs
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	test? ( ros-eloquent/demo_nodes_cpp )
	test? ( ros-eloquent/diagnostic_msgs )
	test? ( ros-eloquent/launch )
	test? ( ros-eloquent/launch_testing )
	test? ( ros-eloquent/launch_testing_ament_cmake )
	test? ( ros-eloquent/launch_testing_ros )
	test? ( ros-eloquent/ros2run )
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	ros-eloquent/ament_index_python
	ros-eloquent/rmw_implementation_cmake
	ros-eloquent/rosidl_cmake
	ros-eloquent/rosidl_parser
	virtual/pkgconfig
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
