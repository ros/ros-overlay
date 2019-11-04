# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigur[...]"
HOMEPAGE="http://gazebosim.org/tutorials?cat=connect_ros"
SRC_URI="https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/eloquent/${PN}/3.4.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/camera_info_manager
	ros-eloquent/cv_bridge
	ros-eloquent/gazebo_dev
	ros-eloquent/gazebo_msgs
	ros-eloquent/gazebo_ros
	ros-eloquent/geometry_msgs
	ros-eloquent/image_transport
	ros-eloquent/nav_msgs
	ros-eloquent/rclcpp
	ros-eloquent/sensor_msgs
	ros-eloquent/std_msgs
	ros-eloquent/std_srvs
	ros-eloquent/tf2_geometry_msgs
	ros-eloquent/tf2_ros
	ros-eloquent/trajectory_msgs
	test? ( ros-eloquent/ament_cmake_gtest )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	test? ( ros-eloquent/cv_bridge )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
