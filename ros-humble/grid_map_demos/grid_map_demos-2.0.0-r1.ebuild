# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Demo nodes to demonstrate the usage of the grid map library."
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
	ros-humble/grid_map_filters
	ros-humble/grid_map_loader
	ros-humble/grid_map_msgs
	ros-humble/grid_map_octomap
	ros-humble/grid_map_ros
	ros-humble/grid_map_rviz_plugin
	ros-humble/grid_map_visualization
	ros-humble/octomap_msgs
	ros-humble/octomap_rviz_plugins
	ros-humble/octomap_server
	ros-humble/rclcpp
	ros-humble/rclpy
	ros-humble/rviz2
	ros-humble/sensor_msgs
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	media-libs/opencv[python]
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/grid_map_cmake_helpers
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
