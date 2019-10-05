# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="roseus_tutorials"
HOMEPAGE="http://ros.org/wiki/roseus_tutorials"
SRC_URI="https://github.com/tork-a/jsk_roseus-release/archive/release/melodic/${PN}/1.7.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/ar_track_alvar
	ros-melodic/checkerboard_detector
	ros-melodic/image_proc
	ros-melodic/image_view2
	ros-melodic/jsk_recognition_msgs
	ros-melodic/opencv_apps
	ros-melodic/posedetection_msgs
	ros-melodic/uvc_camera
	ros-melodic/visualization_msgs
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roseus
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
