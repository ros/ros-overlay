# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This repository holds the current calibration data for Care-O-bot."
HOMEPAGE="http://ros.org/wiki/cob_calibration_data"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/noetic/${PN}/0.6.15-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/xacro
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cob_supported_robots
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
