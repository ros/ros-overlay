# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="RealSense Camera package allowing access to Intel SR300, D400 and L500 3D c[...]"
HOMEPAGE="http://www.ros.org/wiki/RealSense"
SRC_URI="https://github.com/IntelRealSense/realsense-ros-release/archive/release/galactic/${PN}/3.2.3-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
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
	ros-galactic/std_srvs
	ros-galactic/tf2
	ros-galactic/tf2_ros
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	dev-cpp/eigen
	test? ( media-libs/opencv )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/ros_environment
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
