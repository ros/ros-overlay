# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Messages specific to AStuff-provided sensors."
HOMEPAGE="https://github.com/astuff/astuff_sensor_specific_msgs"
SRC_URI="https://github.com/astuff/${PN}-release/archive/release/kinetic/${PN}/2.0.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/delphi_esr_msgs
	ros-kinetic/delphi_srr_msgs
	ros-kinetic/ibeo_msgs
	ros-kinetic/kartech_linear_actuator_msgs
	ros-kinetic/mobileye_560_660_msgs
	ros-kinetic/neobotix_usboard_msgs
	ros-kinetic/pacmod_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
