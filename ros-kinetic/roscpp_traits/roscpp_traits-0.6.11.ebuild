# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="roscpp_traits contains the message traits code as described in\
	<a href[...]"
HOMEPAGE="http://ros.org/wiki/roscpp_traits"
SRC_URI="https://github.com/ros-gbp/roscpp_core-release/archive/release/kinetic/${PN}/0.6.11-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cpp_common
	ros-kinetic/rostime
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
