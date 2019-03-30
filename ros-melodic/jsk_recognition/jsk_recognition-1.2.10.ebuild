# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>Metapackage that contains recognition package for jsk-ros-pkg</p>"
HOMEPAGE="http://ros.org/wiki/jsk_recognition"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/melodic/${PN}/1.2.10-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/checkerboard_detector
	ros-melodic/imagesift
	ros-melodic/jsk_pcl_ros
	ros-melodic/jsk_perception
	ros-melodic/jsk_recognition_msgs
	ros-melodic/jsk_recognition_utils
	ros-melodic/resized_image_transport
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
