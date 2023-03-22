# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ffha: PDDL Planner \(http://ipc.informatik.uni-freiburg.de\)"
HOMEPAGE="http://ros.org/wiki/ffha"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/${PN}/2.1.21-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/mk
	ros-noetic/rosbuild
	ros-noetic/roslib
	ros-noetic/rospack
	sys-devel/bison
	sys-devel/flex
	sys-apps/gawk
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
