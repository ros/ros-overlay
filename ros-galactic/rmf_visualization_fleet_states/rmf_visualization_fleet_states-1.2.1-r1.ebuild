# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="Fleet state visualizer"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmf_visualization-release/archive/release/galactic/${PN}/1.2.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/ament_index_python
	ros-galactic/rclpy
	ros-galactic/rmf_building_map_msgs
	ros-galactic/rmf_traffic_msgs
	ros-galactic/rmf_visualization_msgs
	ros-galactic/std_msgs
	ros-galactic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-galactic/rmf_fleet_msgs
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
