# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A simple bridge between ROS 1 and ROS 2"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/ardent/${PN}/0.4.0-0.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-ardent/actionlib_msgs
	ros-ardent/diagnostic_msgs
	ros-ardent/geometry_msgs
	ros-ardent/nav_msgs
	ros-ardent/rclcpp
	ros-ardent/rcutils
	ros-ardent/sensor_msgs
	ros-ardent/shape_msgs
	ros-ardent/std_msgs
	ros-ardent/std_srvs
	ros-ardent/stereo_msgs
	ros-ardent/tf2_msgs
	ros-ardent/trajectory_msgs
	ros-ardent/visualization_msgs
	test? ( ros-ardent/ament_cmake_pytest )
	test? ( ros-ardent/ament_lint_auto )
	test? ( ros-ardent/ament_lint_common )
	test? ( ros-ardent/demo_nodes_cpp )
	test? ( ros-ardent/diagnostic_msgs )
	test? ( ros-ardent/launch )
	test? ( ros-ardent/ros2run )
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake
	ros-ardent/ament_index_python
	ros-ardent/rmw_implementation_cmake
	ros-ardent/rosidl_cmake
	ros-ardent/rosidl_parser
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
