# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Roboception rc_visard support meta package"
HOMEPAGE="http://roboception.com/rc_visard"
SRC_URI="https://github.com/roboception-gbp/${PN}-release/archive/release/noetic/${PN}/3.2.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/rc_hand_eye_calibration_client
	ros-noetic/rc_pick_client
	ros-noetic/rc_roi_manager_gui
	ros-noetic/rc_silhouettematch_client
	ros-noetic/rc_tagdetect_client
	ros-noetic/rc_visard_description
	ros-noetic/rc_visard_driver
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
