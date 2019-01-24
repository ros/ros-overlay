# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="SOEM is an open source EtherCAT master library written in c. Its\
	 prim[...]"
HOMEPAGE="http://developer.berlios.de/projects/soem"
SRC_URI="https://github.com/mgruhler/${PN}-gbp/archive/release/melodic/${PN}/1.3.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
