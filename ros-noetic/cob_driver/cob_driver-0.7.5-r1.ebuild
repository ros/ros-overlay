# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The cob_driver stack includes packages that provide access to the Care-O-bo[...]"
HOMEPAGE="http://ros.org/wiki/cob_driver"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/noetic/${PN}/0.7.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cob_base_drive_chain
	ros-noetic/cob_bms_driver
	ros-noetic/cob_canopen_motor
	ros-noetic/cob_elmo_homing
	ros-noetic/cob_generic_can
	ros-noetic/cob_light
	ros-noetic/cob_mimic
	ros-noetic/cob_phidgets
	ros-noetic/cob_relayboard
	ros-noetic/cob_scan_unifier
	ros-noetic/cob_sick_lms1xx
	ros-noetic/cob_sick_s300
	ros-noetic/cob_sound
	ros-noetic/cob_undercarriage_ctrl
	ros-noetic/cob_utilities
	ros-noetic/cob_voltage_control
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
