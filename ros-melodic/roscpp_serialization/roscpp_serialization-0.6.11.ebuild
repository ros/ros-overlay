# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="roscpp_serialization contains the code for serialization as described in\
 [...]"
HOMEPAGE="http://ros.org/wiki/roscpp_serialization"
SRC_URI="https://github.com/ros-gbp/roscpp_core-release/archive/release/melodic/${PN}/0.6.11-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cpp_common
	ros-melodic/roscpp_traits
	ros-melodic/rostime
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
