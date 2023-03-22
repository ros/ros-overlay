# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Common source for RMW implementations built with RTI Connext DDS Profession[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/humble/${PN}/0.11.1-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/fastcdr
	ros-humble/rcpputils
	ros-humble/rcutils
	ros-humble/rmw
	ros-humble/rmw_dds_common
	ros-humble/rosidl_runtime_c
	ros-humble/rosidl_runtime_cpp
	ros-humble/rosidl_typesupport_fastrtps_c
	ros-humble/rosidl_typesupport_fastrtps_cpp
	ros-humble/rosidl_typesupport_introspection_c
	ros-humble/rosidl_typesupport_introspection_cpp
	ros-humble/rti_connext_dds_cmake_module
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
