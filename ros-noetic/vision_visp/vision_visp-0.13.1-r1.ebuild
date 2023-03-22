# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Virtual package providing ViSP related packages."
HOMEPAGE="http://wiki.ros.org/vision_visp"
SRC_URI="https://github.com/lagadic/${PN}-release/archive/release/noetic/${PN}/0.13.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GPL-2.0-only"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/visp_auto_tracker
	ros-noetic/visp_bridge
	ros-noetic/visp_camera_calibration
	ros-noetic/visp_hand2eye_calibration
	ros-noetic/visp_tracker
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
