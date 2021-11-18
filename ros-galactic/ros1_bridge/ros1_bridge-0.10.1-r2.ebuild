# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="A simple bridge between ROS 1 and ROS 2"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/0.10.1-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/actionlib_msgs
	ros-galactic/builtin_interfaces
	ros-galactic/diagnostic_msgs
	ros-galactic/example_interfaces
	ros-galactic/gazebo_msgs
	ros-galactic/geometry_msgs
	ros-galactic/nav_msgs
	ros-galactic/rclcpp
	ros-galactic/rcutils
	ros-galactic/sensor_msgs
	ros-galactic/shape_msgs
	ros-galactic/std_msgs
	ros-galactic/std_srvs
	ros-galactic/stereo_msgs
	ros-galactic/tf2_msgs
	ros-galactic/trajectory_msgs
	ros-galactic/visualization_msgs
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/demo_nodes_cpp )
	test? ( ros-galactic/diagnostic_msgs )
	test? ( ros-galactic/launch )
	test? ( ros-galactic/launch_testing )
	test? ( ros-galactic/launch_testing_ament_cmake )
	test? ( ros-galactic/launch_testing_ros )
	test? ( ros-galactic/ros2run )
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/ament_index_python
	ros-galactic/rmw_implementation_cmake
	ros-galactic/rosidl_cmake
	ros-galactic/rosidl_parser
	virtual/pkgconfig
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
