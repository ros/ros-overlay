# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Holds the action description and relevant messages for the move_base package."
HOMEPAGE="http://wiki.ros.org/move_base_msgs"
SRC_URI="https://github.com/ros2-gbp/navigation_msgs-release/archive/release/eloquent/${PN}/2.0.2-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/action_msgs
	ros-eloquent/geometry_msgs
	ros-eloquent/rosidl_default_runtime
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	ros-eloquent/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
