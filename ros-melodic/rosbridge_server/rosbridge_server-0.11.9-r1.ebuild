# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A WebSocket interface to rosbridge."
HOMEPAGE="http://ros.org/wiki/rosbridge_server"
SRC_URI="https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/melodic/${PN}/0.11.9-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/rosapi
	ros-melodic/rosauth
	ros-melodic/rosbridge_library
	ros-melodic/rosbridge_msgs
	ros-melodic/rospy
	test? ( ros-melodic/rostest )
	dev-python/autobahn
	dev-python/backports-ssl-match-hostname
	www-servers/tornado
	dev-python/twisted
	dev-python/autobahn
	www-servers/tornado
	dev-python/twisted
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
