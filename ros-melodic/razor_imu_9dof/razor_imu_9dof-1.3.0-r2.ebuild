# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="razor_imu_9dof is a package that provides a ROS driver for the Sparkfun Ope[...]"
HOMEPAGE="http://ros.org/wiki/razor_imu_9dof"
SRC_URI="https://github.com/ENSTABretagneRobotics/${PN}-release/archive/release/melodic/${PN}/1.3.0-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( BSD GPL-3.0-only )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/dynamic_reconfigure
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/tf
	dev-python/pyserial
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
