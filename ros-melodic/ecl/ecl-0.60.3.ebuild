# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Metapackage bringing all of ecl together."
HOMEPAGE="http://www.ros.org/wiki/ecl"
SRC_URI="https://github.com/yujinrobot-release/${PN}_manipulation-release/archive/release/melodic/${PN}/0.60.3-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/ecl_core
	ros-melodic/ecl_lite
	ros-melodic/ecl_manipulation
	ros-melodic/ecl_navigation
	ros-melodic/ecl_tools
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
