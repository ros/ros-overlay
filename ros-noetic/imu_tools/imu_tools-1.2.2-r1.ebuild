# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Various tools for IMU devices"
HOMEPAGE="http://ros.org/wiki/imu_tools"
SRC_URI="https://github.com/uos-gbp/${PN}-release/archive/release/noetic/${PN}/1.2.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/imu_complementary_filter
	ros-noetic/imu_filter_madgwick
	ros-noetic/rviz_imu_plugin
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
