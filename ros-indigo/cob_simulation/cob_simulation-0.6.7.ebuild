# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The cob_simulation stack includes packages to work with CareObot within simula"
HOMEPAGE="http://ros.org/wiki/cob_simulation"
SRC_URI="https://github.com/ipa320/cob_simulation-release/archive/release/indigo/cob_simulation/0.6.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_bringup_sim
	ros-indigo/cob_gazebo
	ros-indigo/cob_gazebo_objects
	ros-indigo/cob_gazebo_worlds
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

