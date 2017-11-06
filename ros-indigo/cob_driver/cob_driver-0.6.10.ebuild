# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The cob_driver stack includes packages that provide access to the Care-O-bo[...]"
HOMEPAGE="http://ros.org/wiki/cob_driver"
SRC_URI="https://github.com/ipa320/cob_driver-release/archive/release/indigo/cob_driver/0.6.10-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_base_drive_chain
	ros-indigo/cob_bms_driver
	ros-indigo/cob_camera_sensors
	ros-indigo/cob_canopen_motor
	ros-indigo/cob_elmo_homing
	ros-indigo/cob_generic_can
	ros-indigo/cob_head_axis
	ros-indigo/cob_light
	ros-indigo/cob_mimic
	ros-indigo/cob_phidgets
	ros-indigo/cob_relayboard
	ros-indigo/cob_scan_unifier
	ros-indigo/cob_sick_lms1xx
	ros-indigo/cob_sick_s300
	ros-indigo/cob_sound
	ros-indigo/cob_undercarriage_ctrl
	ros-indigo/cob_utilities
	ros-indigo/cob_voltage_control
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
