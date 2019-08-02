# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Clearpath Husky installation and integration package"
HOMEPAGE="http://ros.org/wiki/husky_bringup"
SRC_URI="https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/${PN}/0.3.4-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/husky_base
	ros-kinetic/husky_control
	ros-kinetic/husky_description
	ros-kinetic/imu_filter_madgwick
	ros-kinetic/imu_transformer
	ros-kinetic/lms1xx
	ros-kinetic/microstrain_3dmgx2_imu
	ros-kinetic/microstrain_mips
	ros-kinetic/nmea_comms
	ros-kinetic/nmea_navsat_driver
	ros-kinetic/robot_localization
	ros-kinetic/robot_upstart
	ros-kinetic/tf
	ros-kinetic/tf2_ros
	ros-kinetic/um6
	ros-kinetic/um7
	sci-libs/scipy
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslaunch
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
