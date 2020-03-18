# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The scenario_test_tools package implements helpers for scriptable scenario [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/${PN}/0.6.16-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/move_base_msgs
	ros-melodic/rospy
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/tf
	test? ( ros-melodic/cob_sound )
	test? ( ros-melodic/cob_srvs )
	test? ( ros-melodic/control_msgs )
	test? ( ros-melodic/geometry_msgs )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
