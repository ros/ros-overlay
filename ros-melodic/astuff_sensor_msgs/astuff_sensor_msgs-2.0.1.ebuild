# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Messages specific to AStuff-provided sensors."
HOMEPAGE="https://github.com/astuff/astuff_sensor_specific_msgs"
SRC_URI="https://github.com/astuff/${PN}-release/archive/release/melodic/${PN}/2.0.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/delphi_esr_msgs
	ros-melodic/delphi_srr_msgs
	ros-melodic/ibeo_msgs
	ros-melodic/kartech_linear_actuator_msgs
	ros-melodic/mobileye_560_660_msgs
	ros-melodic/neobotix_usboard_msgs
	ros-melodic/pacmod_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
