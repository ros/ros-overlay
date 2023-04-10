# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Collect and diagnose cpu temperature informations"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yotabits/${PN}-release/archive/release/melodic/${PN}/0.0.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="-c-Ascent-Robotics-Inc.-All-rights-reserved."

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diagnostic_updater
	ros-melodic/roscpp
	sys-apps/lm_sensors:0
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
