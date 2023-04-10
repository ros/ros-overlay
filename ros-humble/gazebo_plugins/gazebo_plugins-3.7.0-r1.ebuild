# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigur[...]"
HOMEPAGE="http://gazebosim.org/tutorials?cat=connect_ros"
SRC_URI="https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/humble/${PN}/3.7.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD-Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/camera_info_manager
	ros-humble/cv_bridge
	ros-humble/gazebo_dev
	ros-humble/gazebo_msgs
	ros-humble/gazebo_ros
	ros-humble/geometry_msgs
	ros-humble/image_transport
	ros-humble/nav_msgs
	ros-humble/rclcpp
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	ros-humble/std_srvs
	ros-humble/tf2_geometry_msgs
	ros-humble/tf2_ros
	ros-humble/trajectory_msgs
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/cv_bridge )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
