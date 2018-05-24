# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Conversion nodes for messages from SocketCAN to a ROS Topic and vice versa."
HOMEPAGE="http://wiki.ros.org/socketcan_bridge"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/lunar/${PN}/0.7.9-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/can_msgs
	ros-lunar/roscpp
	ros-lunar/socketcan_interface
	test? ( ros-lunar/roslint )
	test? ( ros-lunar/rostest )
	test? ( ros-lunar/rosunit )
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
