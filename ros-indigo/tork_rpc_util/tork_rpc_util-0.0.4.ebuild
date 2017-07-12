# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package provides abstract RPC Remote Procedure Call structure for  highe"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/tork_rpc-release/archive/release/indigo/tork_rpc_util/0.0.4-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/genpy
	ros-indigo/geometry_msgs
	ros-indigo/message_runtime
	ros-indigo/rospy
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	ros-indigo/roslint
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

