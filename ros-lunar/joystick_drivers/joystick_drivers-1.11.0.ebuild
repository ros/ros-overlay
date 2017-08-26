# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This metapackage depends on packages for interfacing common\
	joysticks and hu"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/joystick_drivers-release/archive/release/lunar/joystick_drivers/1.11.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/joy
	ros-lunar/ps3joy
	ros-lunar/spacenav_node
	ros-lunar/wiimote
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

