# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="Fleet state visualizer"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmf_visualization-release/archive/release/foxy/${PN}/1.2.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/ament_index_python
	ros-foxy/rclpy
	ros-foxy/rmf_building_map_msgs
	ros-foxy/rmf_traffic_msgs
	ros-foxy/rmf_visualization_msgs
	ros-foxy/std_msgs
	ros-foxy/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-foxy/rmf_fleet_msgs
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
