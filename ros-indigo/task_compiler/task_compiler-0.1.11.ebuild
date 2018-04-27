# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="task_compiler\
\
	 Compiler that translate task description in PDDL \(Pl[...]"
HOMEPAGE="http://ros.org/wiki/task_compiler"
SRC_URI="https://github.com/tork-a/jsk_planning-release/archive/release/indigo/${PN}/0.1.11-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/pddl_planner
	ros-indigo/roseus_smach
	ros-indigo/smach_viewer
	test? ( ros-indigo/rostest )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
