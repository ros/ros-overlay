# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Fleet Adapter package for RMF fleets."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmf_ros2-release/archive/release/galactic/${PN}/1.4.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/rclcpp
	ros-galactic/rclcpp_components
	ros-galactic/rmf_battery
	ros-galactic/rmf_dispenser_msgs
	ros-galactic/rmf_door_msgs
	ros-galactic/rmf_fleet_msgs
	ros-galactic/rmf_ingestor_msgs
	ros-galactic/rmf_lift_msgs
	ros-galactic/rmf_task
	ros-galactic/rmf_task_msgs
	ros-galactic/rmf_traffic
	ros-galactic/rmf_traffic_ros2
	ros-galactic/rmf_utils
	ros-galactic/std_msgs
	ros-galactic/stubborn_buddies
	ros-galactic/stubborn_buddies_msgs
	test? ( ros-galactic/ament_cmake_catch2 )
	test? ( ros-galactic/rmf_cmake_uncrustify )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	dev-cpp/eigen
	dev-cpp/yaml-cpp
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
