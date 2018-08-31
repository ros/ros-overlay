# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Messages specific to AStuff-provided sensors."
HOMEPAGE="https://github.com/astuff/astuff_sensor_msgs"
SRC_URI="https://github.com/astuff/${PN}-release/archive/release/lunar/${PN}/2.2.2-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/delphi_esr_msgs
	ros-lunar/delphi_srr_msgs
	ros-lunar/derived_object_msgs
	ros-lunar/ibeo_msgs
	ros-lunar/kartech_linear_actuator_msgs
	ros-lunar/mobileye_560_660_msgs
	ros-lunar/neobotix_usboard_msgs
	ros-lunar/pacmod_msgs
	ros-lunar/radar_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
