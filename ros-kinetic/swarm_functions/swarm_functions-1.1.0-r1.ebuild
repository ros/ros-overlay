# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The swarm functions library provides simple functionalities that enable swa[...]"
HOMEPAGE="http://wiki.ros.org/swarm_functions"
SRC_URI="https://github.com/cpswarm/${PN}-release/archive/release/kinetic/${PN}/1.1.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/area_division
	ros-kinetic/coverage_path
	ros-kinetic/kinematics_exchanger
	ros-kinetic/state_exchanger
	ros-kinetic/target_monitor
	ros-kinetic/task_allocation
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
