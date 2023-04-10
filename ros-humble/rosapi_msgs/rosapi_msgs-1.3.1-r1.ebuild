# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Provides service calls for getting ros meta-information, like list of\
	[...]"
HOMEPAGE="http://ros.org/wiki/rosapi"
SRC_URI="https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/humble/${PN}/1.3.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/builtin_interfaces
	ros-humble/rcl_interfaces
	ros-humble/rosidl_default_runtime
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_ros
	ros-humble/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
