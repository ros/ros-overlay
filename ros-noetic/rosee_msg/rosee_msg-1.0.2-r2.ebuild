# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The rosee_msg package"
HOMEPAGE="https://advrhumanoids.github.io/ROSEndEffectorDocs/"
SRC_URI="https://github.com/ADVRHumanoids/${PN}-release/archive/release/noetic/${PN}/1.0.2-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib_msgs
	ros-noetic/message_generation
	ros-noetic/message_runtime
	ros-noetic/roscpp
	ros-noetic/rospy
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/geometry_msgs
	ros-noetic/std_msgs
	ros-noetic/std_srvs
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
