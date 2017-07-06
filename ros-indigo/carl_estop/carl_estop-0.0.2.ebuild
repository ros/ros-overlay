# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Software Emergency Stop for the CARL Robot'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gt-rail-release/carl_estop-release/archive/release/indigo/carl_estop/0.0.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/move_base_msgs
	ros-indigo/rmp_msgs
	ros-indigo/roscpp
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

