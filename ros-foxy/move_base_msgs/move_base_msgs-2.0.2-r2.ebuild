# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Holds the action description and relevant messages for the move_base package."
HOMEPAGE="http://wiki.ros.org/move_base_msgs"
SRC_URI="https://github.com/ros2-gbp/navigation_msgs-release/archive/release/foxy/${PN}/2.0.2-2.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/action_msgs
	ros-foxy/geometry_msgs
	ros-foxy/rosidl_default_runtime
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
