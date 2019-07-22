# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Roboception rc_visard support meta package"
HOMEPAGE="http://roboception.com/rc_visard"
SRC_URI="https://github.com/roboception-gbp/${PN}-release/archive/release/kinetic/${PN}/2.7.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rc_hand_eye_calibration_client
	ros-kinetic/rc_pick_client
	ros-kinetic/rc_roi_manager_gui
	ros-kinetic/rc_tagdetect_client
	ros-kinetic/rc_visard_description
	ros-kinetic/rc_visard_driver
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
