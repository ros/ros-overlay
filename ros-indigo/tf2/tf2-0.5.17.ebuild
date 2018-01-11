# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="tf2 is the second generation of the transform library, which lets\
	the [...]"
HOMEPAGE="http://www.ros.org/wiki/tf2"
SRC_URI="https://github.com/ros-gbp/geometry2-release/archive/release/indigo/${PN}/0.5.17-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/rostime
	ros-indigo/tf2_msgs
	dev-libs/console_bridge
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
