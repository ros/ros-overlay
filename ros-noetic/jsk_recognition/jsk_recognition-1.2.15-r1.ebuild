# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>Metapackage that contains recognition package for jsk-ros-pkg</p>"
HOMEPAGE="http://ros.org/wiki/jsk_recognition"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/noetic/${PN}/1.2.15-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/checkerboard_detector
	ros-noetic/imagesift
	ros-noetic/jsk_pcl_ros
	ros-noetic/jsk_perception
	ros-noetic/jsk_recognition_msgs
	ros-noetic/jsk_recognition_utils
	ros-noetic/resized_image_transport
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
