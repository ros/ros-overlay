# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Roboception rc_visard support meta package"
HOMEPAGE="http://roboception.com/rc_visard"
SRC_URI="https://github.com/roboception-gbp/${PN}-release/archive/release/melodic/${PN}/3.0.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/rc_hand_eye_calibration_client
	ros-melodic/rc_pick_client
	ros-melodic/rc_roi_manager_gui
	ros-melodic/rc_silhouettematch_client
	ros-melodic/rc_tagdetect_client
	ros-melodic/rc_visard_description
	ros-melodic/rc_visard_driver
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
