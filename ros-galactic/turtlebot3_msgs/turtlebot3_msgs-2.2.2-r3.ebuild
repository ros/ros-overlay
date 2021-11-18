# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Message and service types: custom messages and services for TurtleBot3 pack[...]"
HOMEPAGE="http://wiki.ros.org/turtlebot3_msgs"
SRC_URI="https://github.com/robotis-ros2-release/${PN}-release/archive/release/galactic/${PN}/2.2.2-3.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/action_msgs
	ros-galactic/builtin_interfaces
	ros-galactic/rosidl_default_runtime
	ros-galactic/std_msgs
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
