# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The system_fingerprint package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/MetroRobots/ros_${PN}-release/archive/release/noetic/${PN}/0.6.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/roslib
	ros-noetic/rosnode
	ros-noetic/rospy
	ros-noetic/rosservice
	test? ( ros-noetic/rostest )
	dev-python/git-python
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
