# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'This package wraps the libpcan to use it as a ros dependency'"
HOMEPAGE="http://p103112.typo3server.info/fileadmin/media/linux/index.htm"
SRC_URI="https://github.com/ipa320/cob_extern-release/archive/release/indigo/libpcan/0.6.10-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/mk
	ros-indigo/roslib
	ros-indigo/rospack
	dev-libs/popt
	sys-kernel/linux-headers
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

