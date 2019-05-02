# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Synchronize the local ROS master to the remote masters \
	 discovered by[...]"
HOMEPAGE="http://ros.org/wiki/master_sync_fkie"
SRC_URI="https://github.com/fkie-release/multimaster_fkie-release/archive/release/indigo/${PN}/0.8.12-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/master_discovery_fkie
	ros-indigo/multimaster_msgs_fkie
	ros-indigo/rosgraph
	ros-indigo/roslib
	ros-indigo/rospy
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
