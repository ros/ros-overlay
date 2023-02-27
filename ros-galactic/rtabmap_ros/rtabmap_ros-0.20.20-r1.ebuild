# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="RTAB-Map\'s ros-pkg. RTAB-Map is a RGB-D SLAM approach with real-time const[...]"
HOMEPAGE="https://github.com/introlab/rtabmap_ros/issues"
SRC_URI="https://github.com/introlab/${PN}-release/archive/release/galactic/${PN}/0.20.20-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/builtin_interfaces
	ros-galactic/class_loader
	ros-galactic/compressed_depth_image_transport
	ros-galactic/compressed_image_transport
	ros-galactic/cv_bridge
	ros-galactic/geometry_msgs
	ros-galactic/image_geometry
	ros-galactic/image_transport
	ros-galactic/laser_geometry
	ros-galactic/message_filters
	ros-galactic/nav2_common
	ros-galactic/nav2_msgs
	ros-galactic/nav_msgs
	ros-galactic/octomap
	ros-galactic/octomap_msgs
	ros-galactic/pcl_conversions
	ros-galactic/pluginlib
	ros-galactic/rclcpp
	ros-galactic/rclcpp_components
	ros-galactic/rclpy
	ros-galactic/rosgraph_msgs
	ros-galactic/rosidl_default_runtime
	ros-galactic/rtabmap
	ros-galactic/rviz_common
	ros-galactic/rviz_default_plugins
	ros-galactic/rviz_rendering
	ros-galactic/sensor_msgs
	ros-galactic/std_msgs
	ros-galactic/std_srvs
	ros-galactic/stereo_msgs
	ros-galactic/tf2
	ros-galactic/tf2_eigen
	ros-galactic/tf2_geometry_msgs
	ros-galactic/tf2_ros
	ros-galactic/visualization_msgs
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/rosidl_default_generators
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
