# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A simple bridge between ROS 1 and ROS 2"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/0.9.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/actionlib_msgs
	ros-foxy/builtin_interfaces
	ros-foxy/diagnostic_msgs
	ros-foxy/example_interfaces
	ros-foxy/geometry_msgs
	ros-foxy/nav_msgs
	ros-foxy/rclcpp
	ros-foxy/rcutils
	ros-foxy/sensor_msgs
	ros-foxy/shape_msgs
	ros-foxy/std_msgs
	ros-foxy/std_srvs
	ros-foxy/stereo_msgs
	ros-foxy/tf2_msgs
	ros-foxy/trajectory_msgs
	ros-foxy/visualization_msgs
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/demo_nodes_cpp )
	test? ( ros-foxy/diagnostic_msgs )
	test? ( ros-foxy/launch )
	test? ( ros-foxy/launch_testing )
	test? ( ros-foxy/launch_testing_ament_cmake )
	test? ( ros-foxy/launch_testing_ros )
	test? ( ros-foxy/ros2run )
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/ament_index_python
	ros-foxy/rmw_implementation_cmake
	ros-foxy/rosidl_cmake
	ros-foxy/rosidl_parser
	virtual/pkgconfig
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
