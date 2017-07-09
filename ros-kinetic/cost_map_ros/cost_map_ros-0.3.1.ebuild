# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Cost maps, following the style of ethzasls grid_map library"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/stonier/cost_map-release/archive/release/kinetic/cost_map_ros/0.3.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cost_map_core
	ros-kinetic/cost_map_msgs
	ros-kinetic/costmap_2d
	ros-kinetic/ecl_build
	ros-kinetic/ecl_command_line
	ros-kinetic/ecl_console
	ros-kinetic/grid_map_core
	ros-kinetic/grid_map_ros
	ros-kinetic/grid_map_visualization
	ros-kinetic/nav_msgs
	ros-kinetic/roslib
	dev-libs/boost
	media-libs/opencv
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

