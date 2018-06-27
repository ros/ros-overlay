# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Implement the ROS middleware interface using eProsima FastRTPS  static code[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/bouncy/${PN}/0.5.0-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/fastcdr
	ros-bouncy/fastrtps
	ros-bouncy/fastrtps_cmake_module
	ros-bouncy/rcutils
	ros-bouncy/rmw
	ros-bouncy/rosidl_generator_c
	ros-bouncy/rosidl_typesupport_introspection_c
	ros-bouncy/rosidl_typesupport_introspection_cpp
	test? ( ros-bouncy/ament_lint_auto )
	test? ( ros-bouncy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
