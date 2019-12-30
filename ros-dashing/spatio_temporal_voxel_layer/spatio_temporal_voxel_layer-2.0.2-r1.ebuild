# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The spatio-temporal 3D obstacle costmap package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/${PN}-release/archive/release/dashing/${PN}/2.0.2-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="LGPL-2.1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/builtin_interfaces
	ros-dashing/geometry_msgs
	ros-dashing/laser_geometry
	ros-dashing/message_filters
	ros-dashing/nav2_costmap_2d
	ros-dashing/pcl_conversions
	ros-dashing/pluginlib
	ros-dashing/rclcpp
	ros-dashing/rosidl_default_runtime
	ros-dashing/sensor_msgs
	ros-dashing/std_msgs
	ros-dashing/std_srvs
	ros-dashing/tf2_geometry_msgs
	ros-dashing/tf2_ros
	ros-dashing/visualization_msgs
	test? ( ros-dashing/ament_lint_auto )
	media-libs/openexr
	media-gfx/openvdb
	media-gfx/openvdb
	sci-libs/pcl
	dev-cpp/tbb
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
