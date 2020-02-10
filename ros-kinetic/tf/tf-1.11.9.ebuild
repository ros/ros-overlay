# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python2_7 )

inherit ros-cmake

DESCRIPTION="tf is a package that lets the user keep track of multiple coordinate\
frame[...]"
HOMEPAGE="http://www.ros.org/wiki/tf"
SRC_URI="https://github.com/ros-gbp/geometry-release/archive/release/kinetic/${PN}/1.11.9-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/message_filters
	ros-kinetic/message_runtime
	ros-kinetic/rosconsole
	ros-kinetic/roscpp
	ros-kinetic/roswtf
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf2_ros
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/rosunit )
	media-gfx/graphviz
"
DEPEND="${RDEPEND}
	ros-kinetic/angles
	ros-kinetic/catkin
	ros-kinetic/message_generation
	ros-kinetic/rostime
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
