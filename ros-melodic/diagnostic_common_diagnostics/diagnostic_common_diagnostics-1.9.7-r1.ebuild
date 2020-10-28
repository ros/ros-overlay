# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="diagnostic_common_diagnostics"
HOMEPAGE="http://ros.org/wiki/diagnostic_common_diagnostics"
SRC_URI="https://github.com/ros-gbp/diagnostics-release/archive/release/melodic/${PN}/1.9.7-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diagnostic_updater
	ros-melodic/rospy
	ros-melodic/tf
	app-admin/hddtemp
	dev-python/psutil
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
