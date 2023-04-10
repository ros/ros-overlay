# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Implement the ROS middleware interface using Eclipse CycloneDDS in C++."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmw_cyclonedds-release/archive/release/humble/${PN}/1.3.4-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/cyclonedds
	ros-humble/iceoryx_binding_c
	ros-humble/rcpputils
	ros-humble/rcutils
	ros-humble/rmw
	ros-humble/rmw_dds_common
	ros-humble/rosidl_runtime_c
	ros-humble/rosidl_typesupport_introspection_c
	ros-humble/rosidl_typesupport_introspection_cpp
	ros-humble/tracetools
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
