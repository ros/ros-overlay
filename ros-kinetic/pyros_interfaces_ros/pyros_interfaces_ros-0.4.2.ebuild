# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Dynamic ROS interface for Pyros"
HOMEPAGE="https://github.com/asmodehn/pyros-rosinterface"
SRC_URI="https://github.com/asmodehn/pyros-rosinterface-rosrelease/archive/release/kinetic/${PN}/0.4.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/message_runtime
	ros-kinetic/pyros_common
	ros-kinetic/pyros_config
	ros-kinetic/pyros_utils
	ros-kinetic/pyzmp
	ros-kinetic/rospy
	ros-kinetic/std_msgs
	test? ( ros-kinetic/pyros_test )
	test? ( ros-kinetic/rosservice )
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/rostopic )
	test? ( ros-kinetic/rosunit )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/catkin_pip
	ros-kinetic/message_generation
	ros-kinetic/roslint
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
