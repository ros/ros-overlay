# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="task_compiler	 Compiler that translate task description in PDDL Planning D"
HOMEPAGE="http://ros.org/wiki/task_compiler"
SRC_URI="https://github.com/tork-a/jsk_planning-release/archive/release/indigo/task_compiler/0.1.10-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/pddl_planner
	ros-indigo/roseus_smach
	ros-indigo/smach_viewer
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

