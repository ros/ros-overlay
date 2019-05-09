# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This stack contains the ROS driver and firmware for the WGE100 camera used [...]"
HOMEPAGE="http://ros.org/wiki/wge100_driver"
SRC_URI="https://github.com/ros-drivers-gbp/${PN}-release/archive/release/melodic/${PN}/1.8.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( BSD GPL-1 GPL-1 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/wge100_camera
	ros-melodic/wge100_camera_firmware
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
