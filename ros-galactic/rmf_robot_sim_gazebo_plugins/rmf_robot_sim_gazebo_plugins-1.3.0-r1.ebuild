# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="ROS 2 Gazebo plugins for TeleportIngestors, TeleportDispensers and Readonly[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmf_simulation-release/archive/release/galactic/${PN}/1.3.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/gazebo_dev
	ros-galactic/gazebo_ros
	ros-galactic/geometry_msgs
	ros-galactic/rclcpp
	ros-galactic/rmf_building_map_msgs
	ros-galactic/rmf_fleet_msgs
	ros-galactic/rmf_robot_sim_common
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
