# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>Metapackage that contains recognition package for jsk-ros-pkg</p>"
HOMEPAGE="http://ros.org/wiki/jsk_recognition"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/kinetic/${PN}/1.2.6-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/checkerboard_detector
	ros-kinetic/imagesift
	ros-kinetic/jsk_pcl_ros
	ros-kinetic/jsk_perception
	ros-kinetic/jsk_recognition_msgs
	ros-kinetic/jsk_recognition_utils
	ros-kinetic/resized_image_transport
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
