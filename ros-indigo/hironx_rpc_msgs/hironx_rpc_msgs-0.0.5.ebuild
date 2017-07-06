# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'ROS topic/service/action files are defined in this package for
  Hironx RPC (Rem'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/hironx_rpc-release/archive/release/indigo/hironx_rpc_msgs/0.0.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib_msgs
	ros-indigo/geometry_msgs
	ros-indigo/message_runtime
	ros-indigo/std_msgs
	ros-indigo/tork_rpc_util
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

