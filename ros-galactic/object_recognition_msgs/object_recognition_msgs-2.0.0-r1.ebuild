# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Object_recognition_msgs contains the ROS message and the actionlib definiti[...]"
HOMEPAGE="http://www.ros.org/wiki/object_recognition"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/galactic/${PN}/2.0.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/action_msgs
	ros-galactic/geometry_msgs
	ros-galactic/rosidl_default_runtime
	ros-galactic/sensor_msgs
	ros-galactic/shape_msgs
	ros-galactic/std_msgs
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/rosidl_default_generators
	ros-galactic/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
