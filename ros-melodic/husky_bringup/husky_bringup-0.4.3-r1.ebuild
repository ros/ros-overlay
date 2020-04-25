# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Clearpath Husky installation and integration package"
HOMEPAGE="http://ros.org/wiki/husky_bringup"
SRC_URI="https://github.com/clearpath-gbp/husky-release/archive/release/melodic/${PN}/0.4.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/husky_base
	ros-melodic/husky_control
	ros-melodic/husky_description
	ros-melodic/imu_filter_madgwick
	ros-melodic/imu_transformer
	ros-melodic/lms1xx
	ros-melodic/microstrain_3dmgx2_imu
	ros-melodic/microstrain_mips
	ros-melodic/nmea_comms
	ros-melodic/nmea_navsat_driver
	ros-melodic/robot_localization
	ros-melodic/robot_upstart
	ros-melodic/tf
	ros-melodic/tf2_ros
	ros-melodic/um6
	ros-melodic/um7
	sci-libs/scipy
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslaunch
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
