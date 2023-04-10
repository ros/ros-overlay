# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Messages for describing objects and how to grasp them."
HOMEPAGE="http://ros.org/wiki/grasping_msgs"
SRC_URI="https://github.com/mikeferguson/${PN}-ros2-gbp/archive/release/foxy/${PN}/0.4.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/geometry_msgs
	ros-foxy/moveit_msgs
	ros-foxy/rosidl_default_runtime
	ros-foxy/sensor_msgs
	ros-foxy/shape_msgs
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
