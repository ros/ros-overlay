# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Metapackage for the Interactive World"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gt-rail-release/interactive_world-release/archive/release/indigo/interactive_world/0.0.12-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/interactive_world_msgs
	ros-indigo/interactive_world_parser
	ros-indigo/interactive_world_tools
	ros-indigo/jinteractiveworld
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

