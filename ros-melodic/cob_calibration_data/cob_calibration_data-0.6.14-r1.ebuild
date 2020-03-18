# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This repository holds the current calibration data for Care-O-bot."
HOMEPAGE="http://ros.org/wiki/cob_calibration_data"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/melodic/${PN}/0.6.14-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/xacro
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cob_supported_robots
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
