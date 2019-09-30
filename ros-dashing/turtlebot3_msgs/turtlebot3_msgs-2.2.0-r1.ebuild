# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Message and service types: custom messages and services for TurtleBot3 pack[...]"
HOMEPAGE="http://wiki.ros.org/turtlebot3_msgs"
SRC_URI="https://github.com/robotis-ros2-release/${PN}-release/archive/release/dashing/${PN}/2.2.0-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/action_msgs
	ros-dashing/builtin_interfaces
	ros-dashing/rosidl_default_runtime
	ros-dashing/std_msgs
	test? ( ros-dashing/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
