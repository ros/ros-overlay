# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Metapackage bringing all of ecl together."
HOMEPAGE="http://www.ros.org/wiki/ecl"
SRC_URI="https://github.com/yujinrobot-release/ecl_manipulation-release/archive/release/indigo/ecl/0.60.1-2.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ecl_core
	ros-indigo/ecl_lite
	ros-indigo/ecl_manipulation
	ros-indigo/ecl_navigation
	ros-indigo/ecl_tools
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
