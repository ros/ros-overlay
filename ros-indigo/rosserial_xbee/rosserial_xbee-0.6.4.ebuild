# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'rosserial_xbee provides tools to do point to multipoint communication
	 betwe'"
HOMEPAGE="http://ros.org/wiki/rosserial_xbee"
SRC_URI="https://github.com/ros-gbp/rosserial-release/archive/release/indigo/rosserial_xbee/0.6.4-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_msgs
	ros-indigo/rospy
	ros-indigo/rosserial_msgs
	ros-indigo/rosserial_python
	dev-python/pyserial
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

