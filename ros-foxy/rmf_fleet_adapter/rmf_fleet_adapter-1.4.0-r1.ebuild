# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Fleet Adapter package for RMF fleets."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmf_ros2-release/archive/release/foxy/${PN}/1.4.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	ros-foxy/rmf_battery
	ros-foxy/rmf_dispenser_msgs
	ros-foxy/rmf_door_msgs
	ros-foxy/rmf_fleet_msgs
	ros-foxy/rmf_ingestor_msgs
	ros-foxy/rmf_lift_msgs
	ros-foxy/rmf_task
	ros-foxy/rmf_task_msgs
	ros-foxy/rmf_traffic
	ros-foxy/rmf_traffic_ros2
	ros-foxy/rmf_utils
	ros-foxy/std_msgs
	test? ( ros-foxy/ament_cmake_catch2 )
	test? ( ros-foxy/rmf_cmake_uncrustify )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	dev-cpp/eigen
	dev-cpp/yaml-cpp
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
