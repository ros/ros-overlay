# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Generate the type support for C messages."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/crystal/${PN}/0.6.3-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/poco_vendor
	ros-crystal/rmw_implementation
	ros-crystal/rosidl_generator_c
	ros-crystal/rosidl_typesupport_interface
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/ament_lint_common )
	dev-libs/poco
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake_ros
	ros-crystal/rosidl_typesupport_connext_c
	ros-crystal/rosidl_typesupport_introspection_c
	ros-crystal/rosidl_typesupport_opensplice_c
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
