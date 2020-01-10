# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="<p>\
	  Kobuki message and service types: custom messages and services f[...]"
HOMEPAGE="http://ros.org/wiki/kobuki_msgs"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/eloquent/${PN}/0.8.0-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/action_msgs
	ros-eloquent/rosidl_default_runtime
	ros-eloquent/std_msgs
	test? ( ros-eloquent/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	ros-eloquent/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
