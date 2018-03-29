# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Driver for Microstrain 3DM-GX4-25 IMU\
	This package is modified by robo[...]"
HOMEPAGE="http://wiki.ros.org/thormang3_imu_3dm_gx4"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-SENSORs-release/archive/release/kinetic/${PN}/0.2.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_updater
	ros-kinetic/geometry_msgs
	ros-kinetic/message_runtime
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
