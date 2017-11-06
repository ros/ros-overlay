# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package provides RPC Remote Procedure Call server  feature for higher le"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/hironx_rpc-release/archive/release/indigo/hironx_rpc_server/0.0.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/hironx_ros_bridge
	ros-indigo/hironx_rpc_msgs
	ros-indigo/hrpsys
	ros-indigo/hrpsys_ros_bridge
	ros-indigo/tork_rpc_util
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslint
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

