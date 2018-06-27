# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A package containing some diagnostics related message and service definitions."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/common_interfaces-release/archive/release/bouncy/${PN}/0.5.0-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/builtin_interfaces
	ros-bouncy/geometry_msgs
	ros-bouncy/rosidl_default_runtime
	ros-bouncy/std_msgs
	test? ( ros-bouncy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake
	ros-bouncy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
