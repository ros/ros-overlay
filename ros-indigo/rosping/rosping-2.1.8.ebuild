# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="rosping is the tool to send ICMP ECHO_REQUEST to network hosts where roscor[...]"
HOMEPAGE="http://ros.org/wiki/rosping"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/indigo/${PN}/2.1.8-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Boost-1.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/roscpp
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/mk
	ros-indigo/rosboost_cfg
	ros-indigo/rosbuild
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
