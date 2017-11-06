# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Various tools for IMU devices"
HOMEPAGE="http://ros.org/wiki/imu_tools"
SRC_URI="https://github.com/uos-gbp/imu_tools-release/archive/release/indigo/imu_tools/1.0.15-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="( BSD GPL-1) "
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/imu_complementary_filter
	ros-indigo/imu_filter_madgwick
	ros-indigo/rviz_imu_plugin
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
