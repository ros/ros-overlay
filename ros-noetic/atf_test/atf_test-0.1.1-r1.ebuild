# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Example test configuration to verifying the correct behaviour of the ATF."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/floweisshardt/atf-release/archive/release/noetic/${PN}/0.1.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/atf_core
	ros-noetic/atf_test_tools
	ros-noetic/rospy
	ros-noetic/rostopic
	ros-noetic/tf2_ros
	test? ( ros-noetic/atf_core )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
