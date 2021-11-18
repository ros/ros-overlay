# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="A visualizer for trajectories in rmf schedule"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmf_visualization-release/archive/release/galactic/${PN}/1.2.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/builtin_interfaces
	ros-galactic/geometry_msgs
	ros-galactic/nav_msgs
	ros-galactic/rclcpp
	ros-galactic/rmf_building_map_msgs
	ros-galactic/rmf_traffic
	ros-galactic/rmf_traffic_msgs
	ros-galactic/rmf_traffic_ros2
	ros-galactic/rmf_visualization_msgs
	ros-galactic/rosidl_default_generators
	ros-galactic/visualization_msgs
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/rmf_cmake_uncrustify )
	dev-cpp/eigen
	dev-libs/boost
	media-libs/opencv
	dev-libs/openssl
	websocketpp
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
