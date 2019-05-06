# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Wrapper for the concorde traveling salesman problem solver. The code was ob[...]"
HOMEPAGE="http://www.math.uwaterloo.ca/tsp/concorde/downloads/downloads.htm"
SRC_URI="https://github.com/ipa320/cob_extern-release/archive/release/kinetic/${PN}/0.6.12-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="free for academic research for further licensing contact Wiliam Cook"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/libqsopt
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
