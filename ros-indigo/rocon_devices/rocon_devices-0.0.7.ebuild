# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'rocon devices meta package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_devices-release/archive/release/indigo/rocon_devices/0.0.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rocon_hue
	ros-indigo/rocon_iot_bridge
	ros-indigo/rocon_ninjablock_bridge
	ros-indigo/rocon_python_hue
	ros-indigo/rocon_rtsp_camera_relay
	ros-indigo/rocon_smartthings_bridge
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

