# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="control_msgs contains base messages and actions useful for\
	controlling[...]"
HOMEPAGE="http://ros.org/wiki/control_msgs"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/bouncy/${PN}/2.0.0-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/actionlib_msgs
	ros-bouncy/builtin_interfaces
	ros-bouncy/rosidl_default_runtime
	ros-bouncy/trajectory_msgs
	test? ( ros-bouncy/ament_lint_auto )
	test? ( ros-bouncy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake
	ros-bouncy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
