# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This stack offers OpenRAVE-related bindings.\
	Maintained by the JSK lab[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/kinetic/${PN}/0.0.6-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/collada_robots
	ros-kinetic/openrave
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
