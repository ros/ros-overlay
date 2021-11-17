# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A WebSocket interface to rosbridge."
HOMEPAGE="http://ros.org/wiki/rosbridge_server"
SRC_URI="https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/noetic/${PN}/0.11.13-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/rosapi
	ros-noetic/rosauth
	ros-noetic/rosbridge_library
	ros-noetic/rosbridge_msgs
	ros-noetic/rospy
	test? ( ros-noetic/rostest )
	dev-python/autobahn
	dev-python/backports-ssl-match-hostname
	www-servers/tornado
	dev-python/twisted
	dev-python/autobahn
	www-servers/tornado
	dev-python/twisted
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
