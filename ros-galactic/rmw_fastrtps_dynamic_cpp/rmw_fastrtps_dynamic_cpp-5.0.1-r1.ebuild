# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Implement the ROS middleware interface using introspection type support."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/galactic/${PN}/5.0.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/fastcdr
	ros-galactic/fastrtps
	ros-galactic/fastrtps_cmake_module
	ros-galactic/rcpputils
	ros-galactic/rcutils
	ros-galactic/rmw
	ros-galactic/rmw_dds_common
	ros-galactic/rmw_fastrtps_shared_cpp
	ros-galactic/rosidl_runtime_c
	ros-galactic/rosidl_typesupport_fastrtps_c
	ros-galactic/rosidl_typesupport_fastrtps_cpp
	ros-galactic/rosidl_typesupport_introspection_c
	ros-galactic/rosidl_typesupport_introspection_cpp
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/osrf_testing_tools_cpp )
	test? ( ros-galactic/test_msgs )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
