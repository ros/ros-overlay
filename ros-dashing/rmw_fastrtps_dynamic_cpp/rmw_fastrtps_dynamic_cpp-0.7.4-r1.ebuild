# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Implement the ROS middleware interface using eProsima FastRTPS  static code[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/dashing/${PN}/0.7.4-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/fastcdr
	ros-dashing/fastrtps
	ros-dashing/fastrtps_cmake_module
	ros-dashing/rcutils
	ros-dashing/rmw
	ros-dashing/rmw_fastrtps_shared_cpp
	ros-dashing/rosidl_generator_c
	ros-dashing/rosidl_typesupport_fastrtps_c
	ros-dashing/rosidl_typesupport_fastrtps_cpp
	ros-dashing/rosidl_typesupport_introspection_c
	ros-dashing/rosidl_typesupport_introspection_cpp
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
