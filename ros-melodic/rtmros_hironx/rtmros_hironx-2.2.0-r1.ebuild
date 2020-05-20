# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The rtmros_hironx package is an operating interface via ROS and OpenRTM, fo[...]"
HOMEPAGE="http://ros.org/wiki/rtmros_hironx/"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/melodic/${PN}/2.2.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/hironx_calibration
	ros-melodic/hironx_moveit_config
	ros-melodic/hironx_ros_bridge
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
