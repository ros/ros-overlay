# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="ROS interface for the grid map library to manage two-dimensional grid maps [...]"
HOMEPAGE="http://github.com/anybotics/grid_map"
SRC_URI="https://github.com/ros2-gbp/grid_map-release/archive/release/humble/${PN}/2.0.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/cv_bridge
	ros-humble/geometry_msgs
	ros-humble/grid_map_core
	ros-humble/grid_map_cv
	ros-humble/grid_map_msgs
	ros-humble/nav2_msgs
	ros-humble/nav_msgs
	ros-humble/rclcpp
	ros-humble/rcutils
	ros-humble/rosbag2_cpp
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	ros-humble/tf2
	ros-humble/visualization_msgs
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/grid_map_cmake_helpers
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
