# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The fzi_icl_comm package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/fzi-forschungszentrum-informatik/fzi_icl_comm-release/archive/release/indigo/fzi_icl_comm/0.0.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/fzi_icl_core
	ros-indigo/roscpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

