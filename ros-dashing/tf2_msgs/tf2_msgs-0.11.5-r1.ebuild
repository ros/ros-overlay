# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="tf2_msgs"
HOMEPAGE="http://www.ros.org/wiki/tf2_msgs"
SRC_URI="https://github.com/ros2-gbp/geometry2-release/archive/release/dashing/${PN}/0.11.5-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/action_msgs
	ros-dashing/builtin_interfaces
	ros-dashing/geometry_msgs
	ros-dashing/rosidl_default_runtime
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
