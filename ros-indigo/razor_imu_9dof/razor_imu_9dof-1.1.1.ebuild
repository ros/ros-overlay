# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="razor_imu_9dof is a package that provides a ROS driver\
	 for the Sparkf[...]"
HOMEPAGE="http://ros.org/wiki/razor_imu_9dof"
SRC_URI="https://github.com/KristofRobot/razor_imu_9dof-release/archive/release/indigo/razor_imu_9dof/1.1.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/dynamic_reconfigure
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/tf
	dev-python/pyserial
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
