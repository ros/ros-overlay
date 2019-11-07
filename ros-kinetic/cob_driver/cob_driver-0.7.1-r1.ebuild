# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The cob_driver stack includes packages that provide access to the Care-O-bo[...]"
HOMEPAGE="http://ros.org/wiki/cob_driver"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/kinetic/${PN}/0.7.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cob_base_drive_chain
	ros-kinetic/cob_bms_driver
	ros-kinetic/cob_camera_sensors
	ros-kinetic/cob_canopen_motor
	ros-kinetic/cob_elmo_homing
	ros-kinetic/cob_generic_can
	ros-kinetic/cob_light
	ros-kinetic/cob_mimic
	ros-kinetic/cob_phidgets
	ros-kinetic/cob_relayboard
	ros-kinetic/cob_scan_unifier
	ros-kinetic/cob_sick_lms1xx
	ros-kinetic/cob_sick_s300
	ros-kinetic/cob_sound
	ros-kinetic/cob_undercarriage_ctrl
	ros-kinetic/cob_utilities
	ros-kinetic/cob_voltage_control
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
