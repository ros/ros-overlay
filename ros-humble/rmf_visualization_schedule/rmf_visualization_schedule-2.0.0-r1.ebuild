# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="A visualizer for trajectories in rmf schedule"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmf_visualization-release/archive/release/humble/${PN}/2.0.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/builtin_interfaces
	ros-humble/geometry_msgs
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/rmf_traffic
	ros-humble/rmf_traffic_msgs
	ros-humble/rmf_traffic_ros2
	ros-humble/rmf_visualization_msgs
	ros-humble/rosidl_default_generators
	ros-humble/visualization_msgs
	test? ( ros-humble/ament_cmake_uncrustify )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/rmf_utils )
	dev-cpp/eigen
	dev-libs/boost
	dev-libs/openssl
	websocketpp
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
