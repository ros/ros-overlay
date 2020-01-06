# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The swarm behaviors library contains implementations of swarm algorithms. I[...]"
HOMEPAGE="https://wiki.ros.org/swarm_behaviors"
SRC_URI="https://github.com/cpswarm/${PN}-release/archive/release/kinetic/${PN}/1.3.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/swarm_behaviors_position
	ros-kinetic/swarm_behaviors_velocity
	ros-kinetic/uav_local_coverage
	ros-kinetic/uav_optimal_coverage
	ros-kinetic/uav_random_direction
	ros-kinetic/uav_simple_tracking
	ros-kinetic/ugv_random_walk
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
