# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Virtual package providing ViSP related packages."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/lagadic/vision_visp-release/archive/release/lunar/vision_visp/0.10.0-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/visp_auto_tracker
	ros-lunar/visp_bridge
	ros-lunar/visp_camera_calibration
	ros-lunar/visp_hand2eye_calibration
	ros-lunar/visp_tracker
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

