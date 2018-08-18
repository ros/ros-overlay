# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A set of message filters which take in messages and may output those messag[...]"
HOMEPAGE="http://ros.org/wiki/message_filters"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/${PN}/1.13.7-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/rosconsole
	ros-lunar/roscpp
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/rostest
	ros-lunar/rosunit
	dev-libs/boost
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
