# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Visualisation tools for cost maps.'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/stonier/cost_map-release/archive/release/indigo/cost_map_visualisations/0.3.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cost_map_core
	ros-indigo/cost_map_msgs
	ros-indigo/cost_map_ros
	ros-indigo/ecl_build
	ros-indigo/ecl_command_line
	ros-indigo/ecl_console
	ros-indigo/nav_msgs
	ros-indigo/roscpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

