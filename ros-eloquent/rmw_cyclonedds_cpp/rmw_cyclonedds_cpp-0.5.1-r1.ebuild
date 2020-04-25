# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Implement the ROS middleware interface using Eclipse CycloneDDS in C++."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmw_cyclonedds-release/archive/release/eloquent/${PN}/0.5.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/cyclonedds
	ros-eloquent/cyclonedds_cmake_module
	ros-eloquent/rcutils
	ros-eloquent/rmw
	ros-eloquent/rosidl_generator_c
	ros-eloquent/rosidl_typesupport_introspection_c
	ros-eloquent/rosidl_typesupport_introspection_cpp
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
