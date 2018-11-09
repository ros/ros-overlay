# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Common code for working with images in ROS."
HOMEPAGE="http://www.ros.org/wiki/image_common"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/1.11.13-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/camera_calibration_parsers
	ros-melodic/camera_info_manager
	ros-melodic/image_transport
	ros-melodic/polled_camera
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
