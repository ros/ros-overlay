# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS node for interfacing any sensor supported by mrpt-hwdrivers"
HOMEPAGE="https://wiki.ros.org/mrpt_sensors"
SRC_URI="https://github.com/mrpt-ros-pkg-release/mrpt_sensors-release/archive/release/melodic/${PN}/0.0.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/mrpt2
	ros-melodic/mrpt_sensorlib
	ros-melodic/roscpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
