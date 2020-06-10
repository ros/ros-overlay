# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Implement the ROS middleware interface using Eclipse CycloneDDS in C++."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmw_cyclonedds-release/archive/release/foxy/${PN}/0.7.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/cyclonedds
	ros-foxy/rcpputils
	ros-foxy/rcutils
	ros-foxy/rmw
	ros-foxy/rmw_dds_common
	ros-foxy/rosidl_runtime_c
	ros-foxy/rosidl_typesupport_introspection_c
	ros-foxy/rosidl_typesupport_introspection_cpp
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
