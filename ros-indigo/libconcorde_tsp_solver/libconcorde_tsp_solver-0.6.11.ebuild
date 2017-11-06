# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Wrapper for the concorde traveling salesman problem solver. The code was ob[...]"
HOMEPAGE="http://www.math.uwaterloo.ca/tsp/concorde/downloads/downloads.htm"
SRC_URI="https://github.com/ipa320/cob_extern-release/archive/release/indigo/libconcorde_tsp_solver/0.6.11-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="( KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/libqsopt
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
