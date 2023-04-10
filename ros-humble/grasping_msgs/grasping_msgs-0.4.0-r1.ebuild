# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Messages for describing objects and how to grasp them."
HOMEPAGE="http://ros.org/wiki/grasping_msgs"
SRC_URI="https://github.com/mikeferguson/${PN}-ros2-gbp/archive/release/humble/${PN}/0.4.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/geometry_msgs
	ros-humble/moveit_msgs
	ros-humble/rosidl_default_runtime
	ros-humble/sensor_msgs
	ros-humble/shape_msgs
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
