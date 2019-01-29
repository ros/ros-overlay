# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="object analytics message definition"
HOMEPAGE="https://github.com/intel/ros2_object_analytics"
SRC_URI="https://github.com/ros2-gbp/ros2_object_analytics-release/archive/release/crystal/${PN}/0.5.3-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-crystal/geometry_msgs
	ros-crystal/object_msgs
	ros-crystal/rosidl_default_runtime
	ros-crystal/sensor_msgs
	ros-crystal/std_msgs
	ros-crystal/tf2_ros
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
	ros-crystal/builtin_interfaces
	ros-crystal/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
