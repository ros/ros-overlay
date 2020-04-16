# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="task_compiler\
\
	 Compiler that translate task description in PDDL \(Pl[...]"
HOMEPAGE="http://ros.org/wiki/task_compiler"
SRC_URI="https://github.com/tork-a/jsk_planning-release/archive/release/melodic/${PN}/0.1.12-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/pddl_planner
	ros-melodic/roseus_smach
	ros-melodic/smach_viewer
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
