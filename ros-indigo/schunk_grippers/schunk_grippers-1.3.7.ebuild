# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Schunk_grippers stack contains packages for PG70 and EZN64 grippers"
HOMEPAGE="http://ros.org/wiki/schunk_grippers"
SRC_URI="https://github.com/SmartRoboticSystems/schunk_grippers-release/archive/release/indigo/schunk_grippers/1.3.7-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/schunk_ezn64
	ros-indigo/schunk_pg70
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
