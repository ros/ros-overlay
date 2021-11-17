# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Demo nodes to demonstrate the usage of the grid map library."
HOMEPAGE="http://github.com/anybotics/grid_map"
SRC_URI="https://github.com/anybotics/grid_map-release/archive/release/noetic/${PN}/1.6.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/cv_bridge
	ros-noetic/geometry_msgs
	ros-noetic/grid_map_core
	ros-noetic/grid_map_cv
	ros-noetic/grid_map_filters
	ros-noetic/grid_map_loader
	ros-noetic/grid_map_msgs
	ros-noetic/grid_map_octomap
	ros-noetic/grid_map_ros
	ros-noetic/grid_map_rviz_plugin
	ros-noetic/grid_map_visualization
	ros-noetic/octomap_msgs
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
