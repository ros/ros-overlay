# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="RealSense camera package allowing access to Intel T265 Tracking module and [...]"
HOMEPAGE="http://www.ros.org/wiki/RealSense"
SRC_URI="https://github.com/IntelRealSense/realsense-ros-release/archive/release/humble/${PN}/4.51.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/builtin_interfaces
	ros-humble/cv_bridge
	ros-humble/diagnostic_updater
	ros-humble/geometry_msgs
	ros-humble/image_transport
	ros-humble/launch_ros
	ros-humble/librealsense2
	ros-humble/nav_msgs
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/realsense2_camera_msgs
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	ros-humble/tf2
	ros-humble/tf2_ros
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/ros_environment
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
