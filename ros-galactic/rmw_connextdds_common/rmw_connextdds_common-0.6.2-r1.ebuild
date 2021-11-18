# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Common source for RMW implementations built with RTI Connext DDS Profession[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/galactic/${PN}/0.6.2-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/fastcdr
	ros-galactic/rcpputils
	ros-galactic/rcutils
	ros-galactic/rmw
	ros-galactic/rmw_dds_common
	ros-galactic/rosidl_runtime_c
	ros-galactic/rosidl_runtime_cpp
	ros-galactic/rosidl_typesupport_fastrtps_c
	ros-galactic/rosidl_typesupport_fastrtps_cpp
	ros-galactic/rosidl_typesupport_introspection_c
	ros-galactic/rosidl_typesupport_introspection_cpp
	ros-galactic/rti_connext_dds_cmake_module
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
