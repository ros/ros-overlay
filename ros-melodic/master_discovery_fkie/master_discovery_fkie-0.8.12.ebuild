# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Discover the running ROS Masters in local network. The \
	 discovering i[...]"
HOMEPAGE="http://ros.org/wiki/master_discovery_fkie"
SRC_URI="https://github.com/fkie-release/multimaster_fkie-release/archive/release/melodic/${PN}/0.8.12-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/multimaster_msgs_fkie
	ros-melodic/rosgraph
	ros-melodic/roslib
	ros-melodic/rospy
	ros-melodic/std_srvs
	net-dns/avahi
	net-dns/avahi[python]
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
