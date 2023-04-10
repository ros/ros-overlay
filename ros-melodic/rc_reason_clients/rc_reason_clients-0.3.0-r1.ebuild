# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Clients for interfacing with Roboception reason modules on rc_visard and rc[...]"
HOMEPAGE="https://github.com/roboception/rc_reason_clients_ros"
SRC_URI="https://github.com/roboception-gbp/${PN}_ros-release/archive/release/melodic/${PN}/0.3.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/ddynamic_reconfigure_python
	ros-melodic/message_runtime
	ros-melodic/rc_reason_msgs
	ros-melodic/rospy
	dev-python/requests
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
