# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A simple bridge between ROS 1 and ROS 2"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/dashing/${PN}/0.7.2-2.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/builtin_interfaces
	ros-dashing/rclcpp
	ros-dashing/rcutils
	ros-dashing/std_msgs
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
	test? ( ros-dashing/demo_nodes_cpp )
	test? ( ros-dashing/diagnostic_msgs )
	test? ( ros-dashing/launch )
	test? ( ros-dashing/launch_testing )
	test? ( ros-dashing/launch_testing_ament_cmake )
	test? ( ros-dashing/launch_testing_ros )
	test? ( ros-dashing/ros2run )
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/ament_index_python
	ros-dashing/rmw_implementation_cmake
	ros-dashing/rosidl_cmake
	ros-dashing/rosidl_parser
	virtual/pkgconfig
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
