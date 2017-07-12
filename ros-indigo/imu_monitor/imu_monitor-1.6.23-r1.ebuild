# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains a single node that monitors the drift of the IMUgyroscope"
HOMEPAGE="http://ros.org/wiki/imu_monitor"
SRC_URI="https://github.com/pr2-gbp/pr2_robot-release/archive/release/indigo/imu_monitor/1.6.23-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_msgs
	ros-indigo/pr2_mechanism_controllers
	ros-indigo/python_orocos_kdl
	ros-indigo/rospy
	ros-indigo/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

