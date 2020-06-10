# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Node launcher and monitor for ROS. rosmon is a replacement\
\	\	for the ros[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/xqms/${PN}-release/archive/release/melodic/${PN}/2.3.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/rosmon_core
	ros-melodic/rqt_rosmon
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
