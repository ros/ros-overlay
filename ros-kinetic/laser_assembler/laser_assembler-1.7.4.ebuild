# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Provides nodes to assemble point clouds from either LaserScan or PointCloud mess"
HOMEPAGE="http://ros.org/wiki/laser_assembler"
SRC_URI="https://github.com/ros-gbp/laser_assembler-release/archive/release/kinetic/laser_assembler/1.7.4-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/filters
	ros-kinetic/laser_geometry
	ros-kinetic/message_filters
	ros-kinetic/message_runtime
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
	ros-kinetic/rostest
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

src_prepare() {
        cd ${P}
        EPATCH_SOURCE="${FILESDIR}" EPATCH_SUFFIX="patch" \
        EPATCH_FORCE="yes" epatch
        ros-cmake_src_prepare
}
