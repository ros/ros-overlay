# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package provides ROS specific hooks for stage"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/stage_ros-release/archive/release/lunar/stage_ros/1.8.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/nav_msgs
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/stage
	ros-lunar/std_msgs
	ros-lunar/std_srvs
	ros-lunar/tf
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/rostest
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

src_prepare() {
	cd ${P}
	EPATCH_SOURCE="${FILESDIR}" EPATCH_SUFFIX="patch" \
	EPATCH_FORCE="yes" epatch
	ros-cmake_src_prepare
}

