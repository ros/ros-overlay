# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="task_compiler	 Compiler that translate task description in PDDL Planning D"
HOMEPAGE="http://ros.org/wiki/task_compiler"
SRC_URI="https://github.com/tork-a/jsk_planning-release/archive/release/kinetic/task_compiler/0.1.10-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/pddl_planner
	ros-kinetic/roseus_smach
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

