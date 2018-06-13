# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="AutonomouStuff PACMod driver package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/astuff/${PN}-release/archive/release/lunar/${PN}/2.0.2-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/can_msgs
	ros-lunar/pacmod_msgs
	ros-lunar/roscpp
	ros-lunar/std_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/roslint
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
