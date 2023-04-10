# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="A visualizer for trajectories in rmf schedule"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmf_visualization-release/archive/release/foxy/${PN}/1.2.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/builtin_interfaces
	ros-foxy/geometry_msgs
	ros-foxy/nav_msgs
	ros-foxy/rclcpp
	ros-foxy/rmf_building_map_msgs
	ros-foxy/rmf_traffic
	ros-foxy/rmf_traffic_msgs
	ros-foxy/rmf_traffic_ros2
	ros-foxy/rmf_visualization_msgs
	ros-foxy/rosidl_default_generators
	ros-foxy/visualization_msgs
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/rmf_cmake_uncrustify )
	dev-cpp/eigen
	dev-libs/boost
	media-libs/opencv
	dev-libs/openssl
	websocketpp
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
