# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="ROS 2 Gazebo-classic plugins for TeleportIngestors, TeleportDispensers and [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmf_simulation-release/archive/release/humble/${PN}/2.0.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/gazebo_dev
	ros-humble/gazebo_ros
	ros-humble/geometry_msgs
	ros-humble/rclcpp
	ros-humble/rmf_building_map_msgs
	ros-humble/rmf_fleet_msgs
	ros-humble/rmf_robot_sim_common
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
