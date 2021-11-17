# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Discover the running ROS Masters in local network. The \
	 discovering i[...]"
HOMEPAGE="http://ros.org/wiki/master_discovery_fkie"
SRC_URI="https://github.com/fkie-release/multimaster_fkie-release/archive/release/noetic/${PN}/1.2.7-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/fkie_multimaster_msgs
	ros-noetic/rosgraph
	ros-noetic/roslib
	ros-noetic/rospy
	ros-noetic/std_srvs
	net-dns/avahi
	net-dns/avahi[python]
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
