# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rosping is the tool to send ICMP ECHO_REQUEST to network hosts where roscor[...]"
HOMEPAGE="http://ros.org/wiki/rosping"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/lunar/${PN}/2.1.11-2.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="Boost-1.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/roscpp
	ros-lunar/std_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/mk
	ros-lunar/rosboost_cfg
	ros-lunar/rosbuild
	ros-lunar/rostest
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
