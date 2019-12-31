# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The spatio-temporal 3D obstacle costmap package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/${PN}-release/archive/release/eloquent/${PN}/2.1.2-2.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="LGPL-2.1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/builtin_interfaces
	ros-eloquent/geometry_msgs
	ros-eloquent/laser_geometry
	ros-eloquent/message_filters
	ros-eloquent/nav2_costmap_2d
	ros-eloquent/pcl_conversions
	ros-eloquent/pluginlib
	ros-eloquent/rclcpp
	ros-eloquent/rosidl_default_runtime
	ros-eloquent/sensor_msgs
	ros-eloquent/std_msgs
	ros-eloquent/std_srvs
	ros-eloquent/tf2_geometry_msgs
	ros-eloquent/tf2_ros
	ros-eloquent/visualization_msgs
	test? ( ros-eloquent/ament_lint_auto )
	media-libs/openexr
	media-gfx/openvdb
	media-gfx/openvdb
	sci-libs/pcl
	dev-cpp/tbb
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	ros-eloquent/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
