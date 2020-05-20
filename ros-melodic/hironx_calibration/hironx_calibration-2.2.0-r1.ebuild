# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch and configuration files for calibrating hironx using the generic <a [...]"
HOMEPAGE="http://ros.org/wiki/hironx_calibration"
SRC_URI="https://github.com/tork-a/rtmros_hironx-release/archive/release/melodic/${PN}/2.2.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/calibration_estimation
	ros-melodic/calibration_launch
	ros-melodic/hironx_moveit_config
	ros-melodic/kdl_parser
	ros-melodic/openni2_launch
	ros-melodic/orocos_kdl
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
