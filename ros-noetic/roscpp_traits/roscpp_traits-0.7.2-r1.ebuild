# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="roscpp_traits contains the message traits code as described in\
	<a href[...]"
HOMEPAGE="http://ros.org/wiki/roscpp_traits"
SRC_URI="https://github.com/ros-gbp/roscpp_core-release/archive/release/noetic/${PN}/0.7.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cpp_common
	ros-noetic/rostime
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
