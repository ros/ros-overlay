# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Common utility functions for Gazebo and ignition RMF plugins"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmf_simulation-release/archive/release/foxy/${PN}/1.3.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/geometry_msgs
	ros-foxy/rclcpp
	ros-foxy/rmf_building_map_msgs
	ros-foxy/rmf_dispenser_msgs
	ros-foxy/rmf_fleet_msgs
	ros-foxy/rmf_ingestor_msgs
	ros-foxy/std_msgs
	ros-foxy/tf2_ros
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
