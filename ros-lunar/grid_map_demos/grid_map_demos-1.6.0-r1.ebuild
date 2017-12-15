# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Demo nodes to demonstrate the usage of the grid map library."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ethz-asl/grid_map-release/archive/release/lunar/grid_map_demos/1.6.0-1.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/cv_bridge
	ros-lunar/geometry_msgs
	ros-lunar/grid_map_core
	ros-lunar/grid_map_cv
	ros-lunar/grid_map_filters
	ros-lunar/grid_map_loader
	ros-lunar/grid_map_msgs
	ros-lunar/grid_map_octomap
	ros-lunar/grid_map_ros
	ros-lunar/grid_map_rviz_plugin
	ros-lunar/grid_map_visualization
	ros-lunar/octomap_msgs
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
