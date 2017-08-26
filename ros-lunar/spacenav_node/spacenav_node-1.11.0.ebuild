# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS interface to the 3Dconnexion SpaceNavigator 6DOF joystick."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/joystick_drivers-release/archive/release/lunar/spacenav_node/1.11.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	dev-libs/libspnav
	x11-libs/libX11
	app-misc/spacenavd
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

