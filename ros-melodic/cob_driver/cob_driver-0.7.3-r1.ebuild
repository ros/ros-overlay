# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The cob_driver stack includes packages that provide access to the Care-O-bo[...]"
HOMEPAGE="http://ros.org/wiki/cob_driver"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/melodic/${PN}/0.7.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cob_base_drive_chain
	ros-melodic/cob_bms_driver
	ros-melodic/cob_camera_sensors
	ros-melodic/cob_canopen_motor
	ros-melodic/cob_elmo_homing
	ros-melodic/cob_generic_can
	ros-melodic/cob_light
	ros-melodic/cob_mimic
	ros-melodic/cob_phidgets
	ros-melodic/cob_relayboard
	ros-melodic/cob_scan_unifier
	ros-melodic/cob_sick_lms1xx
	ros-melodic/cob_sick_s300
	ros-melodic/cob_sound
	ros-melodic/cob_undercarriage_ctrl
	ros-melodic/cob_utilities
	ros-melodic/cob_voltage_control
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
