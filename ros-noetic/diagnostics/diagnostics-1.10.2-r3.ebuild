# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="diagnostics"
HOMEPAGE="http://www.ros.org/wiki/diagnostics"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/1.10.2-3.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/diagnostic_aggregator
	ros-noetic/diagnostic_analysis
	ros-noetic/diagnostic_common_diagnostics
	ros-noetic/diagnostic_updater
	ros-noetic/self_test
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
