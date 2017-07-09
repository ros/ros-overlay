# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The fzi_icl_can package"
HOMEPAGE="http://wiki.ros.org/fzi_icl_can"
SRC_URI="https://github.com/fzi-forschungszentrum-informatik/fzi_icl_can-release/archive/release/kinetic/fzi_icl_can/1.0.9-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/catkin
	ros-kinetic/fzi_icl_core
	dev-libs/popt
	sys-kernel/linux-headers
"
DEPEND="${RDEPEND}
	dev-util/cmake
	net-misc/wget
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

