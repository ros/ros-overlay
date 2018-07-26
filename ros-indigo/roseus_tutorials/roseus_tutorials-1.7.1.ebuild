# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="roseus_tutorials"
HOMEPAGE="http://ros.org/wiki/roseus_tutorials"
SRC_URI="https://github.com/tork-a/jsk_roseus-release/archive/release/indigo/${PN}/1.7.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/ar_track_alvar
	ros-indigo/checkerboard_detector
	ros-indigo/image_proc
	ros-indigo/image_view2
	ros-indigo/jsk_recognition_msgs
	ros-indigo/opencv_apps
	ros-indigo/posedetection_msgs
	ros-indigo/uvc_camera
	ros-indigo/visualization_msgs
	test? ( ros-indigo/rostest )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roseus
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
