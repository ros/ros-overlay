# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Common code for working with images in ROS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/lunar/${PN}/1.11.13-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/camera_calibration_parsers
	ros-lunar/camera_info_manager
	ros-lunar/image_transport
	ros-lunar/polled_camera
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
