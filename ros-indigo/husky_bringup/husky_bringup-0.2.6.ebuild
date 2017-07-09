# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Clearpath Husky installation and integration package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/husky_robot-release/archive/release/indigo/husky_bringup/0.2.6-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/husky_base
	ros-indigo/husky_control
	ros-indigo/husky_description
	ros-indigo/imu_filter_madgwick
	ros-indigo/imu_transformer
	ros-indigo/lms1xx
	ros-indigo/microstrain_3dmgx2_imu
	ros-indigo/nmea_comms
	ros-indigo/nmea_navsat_driver
	ros-indigo/robot_localization
	ros-indigo/robot_upstart
	ros-indigo/tf
	ros-indigo/tf2_ros
	ros-indigo/um6
	ros-indigo/um7
	ros-indigo/ur_modern_driver
	sci-libs/scipy
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslaunch
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

