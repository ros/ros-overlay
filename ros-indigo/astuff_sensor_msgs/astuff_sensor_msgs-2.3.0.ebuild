# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Messages specific to AStuff-provided sensors."
HOMEPAGE="https://github.com/astuff/astuff_sensor_msgs"
SRC_URI="https://github.com/astuff/${PN}-release/archive/release/indigo/${PN}/2.3.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/delphi_esr_msgs
	ros-indigo/delphi_srr_msgs
	ros-indigo/derived_object_msgs
	ros-indigo/ibeo_msgs
	ros-indigo/kartech_linear_actuator_msgs
	ros-indigo/mobileye_560_660_msgs
	ros-indigo/neobotix_usboard_msgs
	ros-indigo/pacmod_msgs
	ros-indigo/radar_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
