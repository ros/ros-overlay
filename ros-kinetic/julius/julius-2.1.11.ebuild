# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="julius: Open-Source Large Vocabulary CSR Engine \(http://julius.sourceforge[...]"
HOMEPAGE="http://ros.org/wiki/julius"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/${PN}/2.1.11-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	net-misc/rsync
	app-arch/unzip
	net-misc/wget
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/mk
	ros-kinetic/roslib
	ros-kinetic/rospack
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
