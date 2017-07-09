# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="image_pipeline fills the gap between getting raw images from a camera driver and"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/kinetic/image_pipeline/1.12.20-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/camera_calibration
	ros-kinetic/depth_image_proc
	ros-kinetic/image_proc
	ros-kinetic/image_publisher
	ros-kinetic/image_rotate
	ros-kinetic/image_view
	ros-kinetic/stereo_image_proc
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

