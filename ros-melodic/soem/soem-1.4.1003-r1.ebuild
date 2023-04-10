# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS wrapper for the Simple Open EtherCAT Master SOEM.\
	This is an updat[...]"
HOMEPAGE="http://openethercatsociety.github.io/"
SRC_URI="https://github.com/mgruhler/${PN}-gbp/archive/release/melodic/${PN}/1.4.1003-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPLv2-with-linking-exception"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
