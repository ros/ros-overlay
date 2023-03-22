# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The ros_mscl package provides a driver for the LORD/Microstrain inertial pr[...]"
HOMEPAGE="https://github.com/LORD-MicroStrain/microstrain_inertial"
SRC_URI="https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/humble/${PN}/3.0.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/diagnostic_aggregator
	ros-humble/diagnostic_updater
	ros-humble/geometry_msgs
	ros-humble/lifecycle_msgs
	ros-humble/mavros_msgs
	ros-humble/microstrain_inertial_msgs
	ros-humble/nav_msgs
	ros-humble/nmea_msgs
	ros-humble/rclcpp_lifecycle
	ros-humble/rosidl_default_runtime
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	ros-humble/std_srvs
	ros-humble/tf2
	ros-humble/tf2_geometry_msgs
	ros-humble/tf2_ros
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_cpplint )
"
DEPEND="${RDEPEND}
	ros-humble/ros_environment
	ros-humble/rosidl_default_generators
	net-misc/curl
	dev-vcs/git
	app-misc/jq
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
