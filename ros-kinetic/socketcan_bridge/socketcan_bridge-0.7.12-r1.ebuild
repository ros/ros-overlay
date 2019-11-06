# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Conversion nodes for messages from SocketCAN to a ROS Topic and vice versa."
HOMEPAGE="http://wiki.ros.org/socketcan_bridge"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/${PN}/0.7.12-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/can_msgs
	ros-kinetic/roscpp
	ros-kinetic/socketcan_interface
	test? ( ros-kinetic/roslint )
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/rosunit )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
