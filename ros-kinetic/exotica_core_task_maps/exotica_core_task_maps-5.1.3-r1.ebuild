# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Common taskmaps provided with EXOTica."
HOMEPAGE="https://github.com/ipab-slmc/exotica"
SRC_URI="https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/${PN}/5.1.3-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/exotica_core
	ros-kinetic/exotica_python
	ros-kinetic/geometry_msgs
	test? ( ros-kinetic/rosunit )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/eigen_conversions
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
