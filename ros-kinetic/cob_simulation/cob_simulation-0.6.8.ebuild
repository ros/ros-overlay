# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The cob_simulation stack includes packages to work with Care-O-bot within simula"
HOMEPAGE="http://ros.org/wiki/cob_simulation"
SRC_URI="https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_simulation/0.6.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cob_bringup_sim
	ros-kinetic/cob_gazebo
	ros-kinetic/cob_gazebo_objects
	ros-kinetic/cob_gazebo_worlds
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

