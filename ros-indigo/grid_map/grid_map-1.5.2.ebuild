# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Meta-package for the universal grid map library."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ethz-asl/grid_map-release/archive/release/indigo/grid_map/1.5.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/grid_map_core
	ros-indigo/grid_map_cv
	ros-indigo/grid_map_demos
	ros-indigo/grid_map_filters
	ros-indigo/grid_map_loader
	ros-indigo/grid_map_msgs
	ros-indigo/grid_map_ros
	ros-indigo/grid_map_rviz_plugin
	ros-indigo/grid_map_visualization
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
