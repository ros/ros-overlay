# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Meta-package for the universal grid map library."
HOMEPAGE="http://github.com/anybotics/grid_map"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/2.0.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/grid_map_cmake_helpers
	ros-humble/grid_map_core
	ros-humble/grid_map_costmap_2d
	ros-humble/grid_map_cv
	ros-humble/grid_map_demos
	ros-humble/grid_map_filters
	ros-humble/grid_map_loader
	ros-humble/grid_map_msgs
	ros-humble/grid_map_octomap
	ros-humble/grid_map_pcl
	ros-humble/grid_map_ros
	ros-humble/grid_map_rviz_plugin
	ros-humble/grid_map_sdf
	ros-humble/grid_map_visualization
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
