# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The ros_mscl package provides a driver for the LORD/Microstrain inertial pr[...]"
HOMEPAGE="https://github.com/LORD-MicroStrain/microstrain_inertial"
SRC_URI="https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/noetic/${PN}/3.0.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cmake_modules
	ros-noetic/diagnostic_aggregator
	ros-noetic/diagnostic_updater
	ros-noetic/geometry_msgs
	ros-noetic/mavros_msgs
	ros-noetic/message_runtime
	ros-noetic/microstrain_inertial_msgs
	ros-noetic/nav_msgs
	ros-noetic/nmea_msgs
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/std_srvs
	ros-noetic/tf2
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	ros-noetic/roslint
	net-misc/curl
	dev-vcs/git
	app-misc/jq
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
