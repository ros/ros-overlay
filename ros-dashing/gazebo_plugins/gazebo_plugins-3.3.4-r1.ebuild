# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigur[...]"
HOMEPAGE="http://gazebosim.org/tutorials?cat=connect_ros"
SRC_URI="https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/dashing/${PN}/3.3.4-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/camera_info_manager
	ros-dashing/cv_bridge
	ros-dashing/gazebo_dev
	ros-dashing/gazebo_msgs
	ros-dashing/gazebo_ros
	ros-dashing/geometry_msgs
	ros-dashing/image_transport
	ros-dashing/nav_msgs
	ros-dashing/rclcpp
	ros-dashing/sensor_msgs
	ros-dashing/std_msgs
	ros-dashing/std_srvs
	ros-dashing/tf2_geometry_msgs
	ros-dashing/tf2_ros
	ros-dashing/trajectory_msgs
	test? ( ros-dashing/ament_cmake_gtest )
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
	test? ( ros-dashing/cv_bridge )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
