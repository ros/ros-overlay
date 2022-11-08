# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The spatio-temporal 3D obstacle costmap package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/${PN}-release/archive/release/galactic/${PN}/2.2.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="LGPL-2.1-only"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/builtin_interfaces
	ros-galactic/geometry_msgs
	ros-galactic/laser_geometry
	ros-galactic/message_filters
	ros-galactic/nav2_costmap_2d
	ros-galactic/pcl_conversions
	ros-galactic/pluginlib
	ros-galactic/rclcpp
	ros-galactic/rosidl_default_runtime
	ros-galactic/sensor_msgs
	ros-galactic/std_msgs
	ros-galactic/std_srvs
	ros-galactic/tf2_geometry_msgs
	ros-galactic/tf2_ros
	ros-galactic/visualization_msgs
	test? ( ros-galactic/ament_lint_auto )
	media-libs/openexr
	media-gfx/openvdb
	media-gfx/openvdb
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
