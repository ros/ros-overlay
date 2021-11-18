# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigur[...]"
HOMEPAGE="http://gazebosim.org/tutorials?cat=connect_ros"
SRC_URI="https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/galactic/${PN}/3.5.2-5.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/camera_info_manager
	ros-galactic/cv_bridge
	ros-galactic/gazebo_dev
	ros-galactic/gazebo_msgs
	ros-galactic/gazebo_ros
	ros-galactic/geometry_msgs
	ros-galactic/image_transport
	ros-galactic/nav_msgs
	ros-galactic/rclcpp
	ros-galactic/sensor_msgs
	ros-galactic/std_msgs
	ros-galactic/std_srvs
	ros-galactic/tf2_geometry_msgs
	ros-galactic/tf2_ros
	ros-galactic/trajectory_msgs
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/cv_bridge )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
