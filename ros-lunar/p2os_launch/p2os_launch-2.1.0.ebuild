# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Launch and config files designed for use with the p2os stack."
HOMEPAGE="http://ros.org/wiki/p2os-purdue"
SRC_URI="https://github.com/allenh1/p2os-release/archive/release/lunar/p2os_launch/2.1.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/p2os_driver
	ros-lunar/p2os_msgs
	ros-lunar/p2os_teleop
	ros-lunar/p2os_urdf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
