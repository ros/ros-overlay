# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Common launch files for RMF demos"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/1.3.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/launch_xml
	ros-galactic/rmf_building_map_tools
	ros-galactic/rmf_demos_assets
	ros-galactic/rmf_demos_maps
	ros-galactic/rmf_demos_panel
	ros-galactic/rmf_demos_tasks
	ros-galactic/rmf_fleet_adapter
	ros-galactic/rmf_task_ros2
	ros-galactic/rmf_traffic_ros2
	ros-galactic/rmf_visualization
	ros-galactic/rviz2
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
