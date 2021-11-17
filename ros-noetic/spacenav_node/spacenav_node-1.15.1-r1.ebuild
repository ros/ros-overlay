# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="ROS interface to the 3Dconnexion SpaceNavigator 6DOF joystick."
HOMEPAGE="http://www.ros.org/wiki/spacenav_node"
SRC_URI="https://github.com/ros-gbp/joystick_drivers-release/archive/release/noetic/${PN}/1.15.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	dev-libs/libspnav
	x11-libs/libX11
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/roslint
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
