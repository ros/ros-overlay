# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Definition of the multi-layered grid map message type."
HOMEPAGE="http://github.com/anybotics/grid_map"
SRC_URI="https://github.com/ros2-gbp/grid_map-release/archive/release/humble/${PN}/2.0.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/geometry_msgs
	ros-humble/rclcpp
	ros-humble/rosidl_default_generators
	ros-humble/std_msgs
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/grid_map_cmake_helpers
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
