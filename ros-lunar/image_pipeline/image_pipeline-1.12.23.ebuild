# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="image_pipeline fills the gap between getting raw images from a camera drive[...]"
HOMEPAGE="http://www.ros.org/wiki/image_pipeline"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/lunar/${PN}/1.12.23-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/camera_calibration
	ros-lunar/depth_image_proc
	ros-lunar/image_proc
	ros-lunar/image_publisher
	ros-lunar/image_rotate
	ros-lunar/image_view
	ros-lunar/stereo_image_proc
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
