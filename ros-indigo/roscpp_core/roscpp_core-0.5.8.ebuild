# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Underlying data libraries for roscpp messages.'"
HOMEPAGE="http://www.ros.org/wiki/roscpp_core"
SRC_URI="https://github.com/ros-gbp/roscpp_core-release/archive/release/indigo/roscpp_core/0.5.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cpp_common
	ros-indigo/roscpp_serialization
	ros-indigo/roscpp_traits
	ros-indigo/rostime
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

