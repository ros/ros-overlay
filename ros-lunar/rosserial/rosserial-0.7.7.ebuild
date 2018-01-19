# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Metapackage for core of rosserial."
HOMEPAGE="http://ros.org/wiki/rosserial"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/lunar/${PN}/0.7.7-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/rosserial_client
	ros-lunar/rosserial_msgs
	ros-lunar/rosserial_python
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
