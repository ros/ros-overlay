# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Driver for the Phidgets Spatial 3/3/3 devices"
HOMEPAGE="http://ros.org/wiki/phidgets_imu"
SRC_URI="https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/${PN}/0.7.10-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diagnostic_aggregator
	ros-melodic/diagnostic_msgs
	ros-melodic/diagnostic_updater
	ros-melodic/imu_filter_madgwick
	ros-melodic/nodelet
	ros-melodic/phidgets_api
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/std_srvs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslaunch
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
