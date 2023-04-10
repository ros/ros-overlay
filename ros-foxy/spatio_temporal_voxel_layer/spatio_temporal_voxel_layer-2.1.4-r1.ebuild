# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The spatio-temporal 3D obstacle costmap package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/${PN}-release/archive/release/foxy/${PN}/2.1.4-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="LGPL-2.1-only"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/builtin_interfaces
	ros-foxy/geometry_msgs
	ros-foxy/laser_geometry
	ros-foxy/message_filters
	ros-foxy/nav2_costmap_2d
	ros-foxy/pcl_conversions
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	ros-foxy/rosidl_default_runtime
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	ros-foxy/std_srvs
	ros-foxy/tf2_geometry_msgs
	ros-foxy/tf2_ros
	ros-foxy/visualization_msgs
	test? ( ros-foxy/ament_lint_auto )
	media-libs/openexr
	media-gfx/openvdb
	media-gfx/openvdb
	sci-libs/pcl
	dev-cpp/tbb
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
