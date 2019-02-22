# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The rtmros_hironx package is an operating interface via ROS and OpenRTM, fo[...]"
HOMEPAGE="http://ros.org/wiki/rtmros_hironx/"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/indigo/${PN}/2.1.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/hironx_calibration
	ros-indigo/hironx_moveit_config
	ros-indigo/hironx_ros_bridge
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
