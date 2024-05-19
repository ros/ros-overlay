# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="pddl planner wrappers"
HOMEPAGE=""
SRC_URI="https://github.com/tork-a/jsk_planning-release/archive/release/noetic/${PN}/0.1.14-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/downward
	ros-noetic/ff
	ros-noetic/ffha
	ros-noetic/lpg_planner
	ros-noetic/pddl_msgs
	ros-noetic/rospy
	sys-process/time
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
