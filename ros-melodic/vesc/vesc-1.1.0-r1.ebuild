# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Metapackage for ROS interface to the Vedder VESC open source motor controller."
HOMEPAGE="http://www.ros.org/wiki/vesc"
SRC_URI="https://github.com/f1tenth/${PN}-release/archive/release/melodic/${PN}/1.1.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/vesc_ackermann
	ros-melodic/vesc_driver
	ros-melodic/vesc_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
