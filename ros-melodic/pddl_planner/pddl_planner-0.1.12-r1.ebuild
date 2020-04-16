# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="pddl planner wrappers"
HOMEPAGE=""
SRC_URI="https://github.com/tork-a/jsk_planning-release/archive/release/melodic/${PN}/0.1.12-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/downward
	ros-melodic/ff
	ros-melodic/ffha
	ros-melodic/lpg_planner
	ros-melodic/pddl_msgs
	ros-melodic/rospy
	sys-process/time
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
