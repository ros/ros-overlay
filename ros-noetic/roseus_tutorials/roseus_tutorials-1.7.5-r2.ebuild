# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="roseus_tutorials"
HOMEPAGE="http://ros.org/wiki/roseus_tutorials"
SRC_URI="https://github.com/tork-a/jsk_roseus-release/archive/release/noetic/${PN}/1.7.5-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/checkerboard_detector
	ros-noetic/image_proc
	ros-noetic/image_view2
	ros-noetic/jsk_recognition_msgs
	ros-noetic/opencv_apps
	ros-noetic/posedetection_msgs
	ros-noetic/visualization_msgs
	test? ( ros-noetic/jsk_pcl_ros )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/roseus
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
