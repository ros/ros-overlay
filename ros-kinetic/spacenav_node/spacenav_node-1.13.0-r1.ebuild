# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS interface to the 3Dconnexion SpaceNavigator 6DOF joystick."
HOMEPAGE="http://www.ros.org/wiki/spacenav_node"
SRC_URI="https://github.com/ros-gbp/joystick_drivers-release/archive/release/kinetic/${PN}/1.13.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	dev-libs/libspnav
	x11-libs/libX11
	app-misc/spacenavd
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
