# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Demo of safe_teleop in stage"
HOMEPAGE="http://ros.org/wiki/safe_teleop_stage"
SRC_URI="https://github.com/ros-gbp/shared_autonomy_manipulation-release/archive/release/indigo/safe_teleop_stage/0.0.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/joy
	ros-indigo/safe_teleop_base
	ros-indigo/stage
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

