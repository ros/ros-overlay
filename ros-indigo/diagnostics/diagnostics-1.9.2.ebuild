# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="diagnostics"
HOMEPAGE="http://www.ros.org/wiki/diagnostics"
SRC_URI="https://github.com/ros-gbp/diagnostics-release/archive/release/indigo/diagnostics/1.9.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_aggregator
	ros-indigo/diagnostic_analysis
	ros-indigo/diagnostic_common_diagnostics
	ros-indigo/diagnostic_updater
	ros-indigo/self_test
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
