# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="object analytics message definition"
HOMEPAGE="https://github.com/intel/ros2_object_analytics"
SRC_URI="https://github.com/ros2-gbp/ros2_object_analytics-release/archive/release/dashing/${PN}/0.5.4-2.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/geometry_msgs
	ros-dashing/object_msgs
	ros-dashing/rosidl_default_runtime
	ros-dashing/sensor_msgs
	ros-dashing/std_msgs
	ros-dashing/tf2_ros
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/builtin_interfaces
	ros-dashing/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
