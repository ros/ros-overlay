# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="pddl planner wrappers"
HOMEPAGE=""
SRC_URI="https://github.com/tork-a/jsk_planning-release/archive/release/indigo/${PN}/0.1.11-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/downward
	ros-indigo/ff
	ros-indigo/ffha
	ros-indigo/lpg_planner
	ros-indigo/pddl_msgs
	ros-indigo/rospy
	sys-process/time
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
