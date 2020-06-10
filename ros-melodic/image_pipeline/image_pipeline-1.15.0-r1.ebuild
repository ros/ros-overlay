# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="image_pipeline fills the gap between getting raw images from a camera drive[...]"
HOMEPAGE="http://www.ros.org/wiki/image_pipeline"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/1.15.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/camera_calibration
	ros-melodic/depth_image_proc
	ros-melodic/image_proc
	ros-melodic/image_publisher
	ros-melodic/image_rotate
	ros-melodic/image_view
	ros-melodic/stereo_image_proc
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
