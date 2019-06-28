# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Driver for the Phidgets Spatial 3/3/3 devices"
HOMEPAGE="http://ros.org/wiki/phidgets_imu"
SRC_URI="https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/${PN}/0.7.9-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_aggregator
	ros-kinetic/diagnostic_msgs
	ros-kinetic/diagnostic_updater
	ros-kinetic/imu_filter_madgwick
	ros-kinetic/nodelet
	ros-kinetic/phidgets_api
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslaunch
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
