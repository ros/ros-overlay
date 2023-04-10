# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="RTAB-Map\'s ros-pkg. RTAB-Map is a RGB-D SLAM approach with real-time const[...]"
HOMEPAGE="https://github.com/introlab/rtabmap_ros/issues"
SRC_URI="https://github.com/introlab/${PN}-release/archive/release/foxy/${PN}/0.20.23-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/builtin_interfaces
	ros-foxy/class_loader
	ros-foxy/compressed_depth_image_transport
	ros-foxy/compressed_image_transport
	ros-foxy/cv_bridge
	ros-foxy/geometry_msgs
	ros-foxy/image_geometry
	ros-foxy/image_transport
	ros-foxy/laser_geometry
	ros-foxy/message_filters
	ros-foxy/nav2_common
	ros-foxy/nav2_msgs
	ros-foxy/nav_msgs
	ros-foxy/octomap
	ros-foxy/octomap_msgs
	ros-foxy/pcl_conversions
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	ros-foxy/rclpy
	ros-foxy/rosgraph_msgs
	ros-foxy/rosidl_default_runtime
	ros-foxy/rtabmap
	ros-foxy/rviz_common
	ros-foxy/rviz_default_plugins
	ros-foxy/rviz_rendering
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	ros-foxy/std_srvs
	ros-foxy/stereo_msgs
	ros-foxy/tf2
	ros-foxy/tf2_eigen
	ros-foxy/tf2_geometry_msgs
	ros-foxy/tf2_ros
	ros-foxy/visualization_msgs
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/ament_cmake_python
	ros-foxy/ros_environment
	ros-foxy/rosidl_default_generators
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
