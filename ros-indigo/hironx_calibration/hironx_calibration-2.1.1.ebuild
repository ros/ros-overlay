# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch and configuration files for calibrating hironx using the generic <a [...]"
HOMEPAGE="http://ros.org/wiki/hironx_calibration"
SRC_URI="https://github.com/tork-a/rtmros_hironx-release/archive/release/indigo/${PN}/2.1.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/calibration_estimation
	ros-indigo/calibration_launch
	ros-indigo/kdl_parser
	ros-indigo/openni2_launch
	ros-indigo/orocos_kdl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
