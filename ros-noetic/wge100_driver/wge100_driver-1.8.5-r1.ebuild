# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This stack contains the ROS driver and firmware for the WGE100 camera used [...]"
HOMEPAGE="http://ros.org/wiki/wge100_driver"
SRC_URI="https://github.com/ros-drivers-gbp/${PN}-release/archive/release/noetic/${PN}/1.8.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="( BSD GPL-because-of-list.h-&-other-files-released-under-BSD GPL )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/wge100_camera
	ros-noetic/wge100_camera_firmware
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
