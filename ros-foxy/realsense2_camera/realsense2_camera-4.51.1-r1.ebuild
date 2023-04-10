# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="RealSense camera package allowing access to Intel T265 Tracking module and [...]"
HOMEPAGE="http://www.ros.org/wiki/RealSense"
SRC_URI="https://github.com/IntelRealSense/realsense-ros-release/archive/release/foxy/${PN}/4.51.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/builtin_interfaces
	ros-foxy/cv_bridge
	ros-foxy/diagnostic_updater
	ros-foxy/geometry_msgs
	ros-foxy/image_transport
	ros-foxy/launch_ros
	ros-foxy/librealsense2
	ros-foxy/nav_msgs
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	ros-foxy/realsense2_camera_msgs
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	ros-foxy/tf2
	ros-foxy/tf2_ros
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/ros_environment
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
