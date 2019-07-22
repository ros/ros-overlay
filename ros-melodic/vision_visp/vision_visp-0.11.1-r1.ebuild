# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Virtual package providing ViSP related packages."
HOMEPAGE="http://wiki.ros.org/vision_visp"
SRC_URI="https://github.com/lagadic/${PN}-release/archive/release/melodic/${PN}/0.11.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/visp_auto_tracker
	ros-melodic/visp_bridge
	ros-melodic/visp_camera_calibration
	ros-melodic/visp_hand2eye_calibration
	ros-melodic/visp_tracker
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
