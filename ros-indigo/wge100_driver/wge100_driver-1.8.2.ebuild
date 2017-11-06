# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This stack contains the ROS driver and firmware for the WGE100 camera used on th"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-drivers-gbp/wge100_driver-release/archive/release/indigo/wge100_driver/1.8.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="( BSD GPL-1 GPL-1 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/wge100_camera
	ros-indigo/wge100_camera_firmware
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

