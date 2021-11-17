# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="fast downward: PDDL Planner \(http://www.fast-downward.org\)"
HOMEPAGE="http://ros.org/wiki/downward"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/${PN}/2.1.21-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	sys-apps/gawk
	sys-process/time
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/rostest
	sys-devel/bison
	app-misc/ca-certificates
	sys-devel/flex
	dev-lang/python
	dev-lang/python
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
