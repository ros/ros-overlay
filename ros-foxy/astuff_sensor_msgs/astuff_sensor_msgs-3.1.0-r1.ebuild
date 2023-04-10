# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Messages specific to AStuff-provided sensors."
HOMEPAGE="http://wiki.ros.org/astuff_sensor_msgs"
SRC_URI="https://github.com/astuff/${PN}-release/archive/release/foxy/${PN}/3.1.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/delphi_esr_msgs
	ros-foxy/delphi_srr_msgs
	ros-foxy/derived_object_msgs
	ros-foxy/ibeo_msgs
	ros-foxy/kartech_linear_actuator_msgs
	ros-foxy/mobileye_560_660_msgs
	ros-foxy/neobotix_usboard_msgs
	ros-foxy/pacmod_msgs
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/ros_environment
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
