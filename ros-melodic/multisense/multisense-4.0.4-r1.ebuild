# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="multisense catkin driver"
HOMEPAGE="http://ros.org/wiki/multisense"
SRC_URI="https://github.com/carnegieroboticsllc/${PN}_ros-release/archive/release/melodic/${PN}/4.0.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/multisense_bringup
	ros-melodic/multisense_cal_check
	ros-melodic/multisense_description
	ros-melodic/multisense_lib
	ros-melodic/multisense_ros
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
