# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="cob_undercarriage_ctrl implements a controller for the omnidirectional base[...]"
HOMEPAGE="http://ros.org/wiki/cob_undercarriage_ctrl"
SRC_URI="https://github.com/ipa320/cob_driver-release/archive/release/melodic/${PN}/0.7.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cob_msgs
	ros-melodic/cob_utilities
	ros-melodic/control_msgs
	ros-melodic/diagnostic_msgs
	ros-melodic/diagnostic_updater
	ros-melodic/geometry_msgs
	ros-melodic/nav_msgs
	ros-melodic/roscpp
	ros-melodic/tf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
