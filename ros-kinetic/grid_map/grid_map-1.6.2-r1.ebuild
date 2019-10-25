# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Meta-package for the universal grid map library."
HOMEPAGE="http://github.com/anybotics/grid_map"
SRC_URI="https://github.com/anybotics/${PN}-release/archive/release/kinetic/${PN}/1.6.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/grid_map_core
	ros-kinetic/grid_map_cv
	ros-kinetic/grid_map_demos
	ros-kinetic/grid_map_filters
	ros-kinetic/grid_map_loader
	ros-kinetic/grid_map_msgs
	ros-kinetic/grid_map_ros
	ros-kinetic/grid_map_rviz_plugin
	ros-kinetic/grid_map_visualization
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
