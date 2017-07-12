# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A set of message filters which take in messages and may output those messages at"
HOMEPAGE="http://ros.org/wiki/message_filters"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/message_filters/1.11.21-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rosconsole
	ros-indigo/roscpp
	ros-indigo/xmlrpcpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rostest
	ros-indigo/rosunit
	dev-libs/boost
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

