# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'This stack offers OpenRAVE-related bindings.
	Maintained by the JSK lab at Un'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/openrave_planning-release/archive/release/indigo/openrave_planning/0.0.5-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/collada_robots
	ros-indigo/openrave
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

