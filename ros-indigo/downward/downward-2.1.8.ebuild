# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="fast downward: PDDL Planner \(http://www.fast-downward.org\)"
HOMEPAGE="http://ros.org/wiki/downward"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/indigo/${PN}/2.1.8-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	sys-apps/gawk
	sys-process/time
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rostest
	sys-devel/bison
	app-misc/ca-certificates
	sys-devel/flex
	dev-lang/python
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
