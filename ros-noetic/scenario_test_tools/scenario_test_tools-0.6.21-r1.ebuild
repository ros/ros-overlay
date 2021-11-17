# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The scenario_test_tools package implements helpers for scriptable scenario [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/${PN}/0.6.21-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/move_base_msgs
	ros-noetic/rospy
	ros-noetic/std_msgs
	ros-noetic/std_srvs
	ros-noetic/tf
	test? ( ros-noetic/cob_sound )
	test? ( ros-noetic/cob_srvs )
	test? ( ros-noetic/control_msgs )
	test? ( ros-noetic/geometry_msgs )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
