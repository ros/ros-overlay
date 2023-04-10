# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Common launch files for RMF demos"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/1.3.2-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/launch_xml
	ros-foxy/rmf_building_map_tools
	ros-foxy/rmf_demos_assets
	ros-foxy/rmf_demos_maps
	ros-foxy/rmf_demos_panel
	ros-foxy/rmf_demos_tasks
	ros-foxy/rmf_fleet_adapter
	ros-foxy/rmf_task_ros2
	ros-foxy/rmf_traffic_ros2
	ros-foxy/rmf_visualization
	ros-foxy/rviz2
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
