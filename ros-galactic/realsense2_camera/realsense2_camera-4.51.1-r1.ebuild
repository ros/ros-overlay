# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="RealSense camera package allowing access to Intel T265 Tracking module and [...]"
HOMEPAGE="http://www.ros.org/wiki/RealSense"
SRC_URI="https://github.com/IntelRealSense/realsense-ros-release/archive/release/galactic/${PN}/4.51.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/builtin_interfaces
	ros-galactic/cv_bridge
	ros-galactic/diagnostic_updater
	ros-galactic/geometry_msgs
	ros-galactic/image_transport
	ros-galactic/launch_ros
	ros-galactic/librealsense2
	ros-galactic/nav_msgs
	ros-galactic/rclcpp
	ros-galactic/rclcpp_components
	ros-galactic/realsense2_camera_msgs
	ros-galactic/sensor_msgs
	ros-galactic/std_msgs
	ros-galactic/tf2
	ros-galactic/tf2_ros
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/ros_environment
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
