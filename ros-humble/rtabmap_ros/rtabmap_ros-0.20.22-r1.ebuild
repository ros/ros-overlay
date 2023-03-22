# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="RTAB-Map\'s ros-pkg. RTAB-Map is a RGB-D SLAM approach with real-time const[...]"
HOMEPAGE="https://github.com/introlab/rtabmap_ros/issues"
SRC_URI="https://github.com/introlab/${PN}-release/archive/release/humble/${PN}/0.20.22-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/builtin_interfaces
	ros-humble/class_loader
	ros-humble/compressed_depth_image_transport
	ros-humble/compressed_image_transport
	ros-humble/cv_bridge
	ros-humble/geometry_msgs
	ros-humble/image_geometry
	ros-humble/image_transport
	ros-humble/laser_geometry
	ros-humble/message_filters
	ros-humble/nav2_common
	ros-humble/nav2_msgs
	ros-humble/nav_msgs
	ros-humble/octomap
	ros-humble/octomap_msgs
	ros-humble/pcl_conversions
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/rclpy
	ros-humble/rosgraph_msgs
	ros-humble/rosidl_default_runtime
	ros-humble/rtabmap
	ros-humble/rviz_common
	ros-humble/rviz_default_plugins
	ros-humble/rviz_rendering
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	ros-humble/std_srvs
	ros-humble/stereo_msgs
	ros-humble/tf2
	ros-humble/tf2_eigen
	ros-humble/tf2_geometry_msgs
	ros-humble/tf2_ros
	ros-humble/visualization_msgs
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/ament_cmake_python
	ros-humble/ros_environment
	ros-humble/rosidl_default_generators
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
