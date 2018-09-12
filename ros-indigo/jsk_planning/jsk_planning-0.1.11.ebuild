# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="<p>Metapackage that contains planning package for jsk-ros-pkg</p>"
HOMEPAGE="http://ros.org/wiki/jsk_planning"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/indigo/${PN}/0.1.11-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/pddl_msgs
	ros-indigo/pddl_planner
	ros-indigo/pddl_planner_viewer
	ros-indigo/task_compiler
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
