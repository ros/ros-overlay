# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Package containing a single launch file to bringup various visualizations"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/2.0.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/launch_xml
	ros-humble/rmf_visualization_building_systems
	ros-humble/rmf_visualization_fleet_states
	ros-humble/rmf_visualization_floorplans
	ros-humble/rmf_visualization_navgraphs
	ros-humble/rmf_visualization_obstacles
	ros-humble/rmf_visualization_rviz2_plugins
	ros-humble/rmf_visualization_schedule
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
