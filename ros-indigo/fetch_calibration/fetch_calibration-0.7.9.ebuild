# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Launch and configuration files for calibrating Fetch using the '"'"'robot_calibratio'"
HOMEPAGE="http://ros.org/wiki/fetch_calibration"
SRC_URI="https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/indigo/fetch_calibration/0.7.9-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="Apache-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/robot_calibration
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

