# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The ros_mscl package provides a driver for the LORD/Microstrain inertial pr[...]"
HOMEPAGE="https://github.com/LORD-MicroStrain/microstrain_inertial"
SRC_URI="https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/foxy/${PN}/3.0.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/diagnostic_aggregator
	ros-foxy/diagnostic_updater
	ros-foxy/geometry_msgs
	ros-foxy/lifecycle_msgs
	ros-foxy/mavros_msgs
	ros-foxy/microstrain_inertial_msgs
	ros-foxy/nav_msgs
	ros-foxy/nmea_msgs
	ros-foxy/rclcpp_lifecycle
	ros-foxy/rosidl_default_runtime
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	ros-foxy/std_srvs
	ros-foxy/tf2
	ros-foxy/tf2_geometry_msgs
	ros-foxy/tf2_ros
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_cpplint )
"
DEPEND="${RDEPEND}
	ros-foxy/ros_environment
	ros-foxy/rosidl_default_generators
	net-misc/curl
	dev-vcs/git
	app-misc/jq
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
