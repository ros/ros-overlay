# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="diagnostic_common_diagnostics"
HOMEPAGE="http://ros.org/wiki/diagnostic_common_diagnostics"
SRC_URI="https://github.com/ros-gbp/diagnostics-release/archive/release/lunar/diagnostic_common_diagnostics/1.9.2-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/diagnostic_updater
	ros-lunar/rospy
	ros-lunar/tf
	app-admin/hddtemp
	dev-python/psutil
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/rostest
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
