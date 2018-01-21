# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="razor_imu_9dof is a package that provides a ROS driver\
	 for the Sparkf[...]"
HOMEPAGE="http://ros.org/wiki/razor_imu_9dof"
SRC_URI="https://github.com/KristofRobot/${PN}-release/archive/release/kinetic/${PN}/1.2.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	dev-python/pyserial
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
