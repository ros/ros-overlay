# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Demo nodes to demonstrate the usage of the grid map library."
HOMEPAGE="http://github.com/ethz-asl/grid_map"
SRC_URI="https://github.com/anybotics/grid_map-release/archive/release/indigo/${PN}/1.6.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cv_bridge
	ros-indigo/geometry_msgs
	ros-indigo/grid_map_core
	ros-indigo/grid_map_cv
	ros-indigo/grid_map_filters
	ros-indigo/grid_map_loader
	ros-indigo/grid_map_msgs
	ros-indigo/grid_map_octomap
	ros-indigo/grid_map_ros
	ros-indigo/grid_map_rviz_plugin
	ros-indigo/grid_map_visualization
	ros-indigo/octomap_msgs
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
