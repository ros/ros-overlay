# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="<p>Metapackage that contains commonly used messages for jsk-ros-pkg</p>"
HOMEPAGE="http://ros.org/wiki/jsk_common_msgs"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/noetic/${PN}/4.3.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/jsk_footstep_msgs
	ros-noetic/jsk_gui_msgs
	ros-noetic/jsk_hark_msgs
	ros-noetic/posedetection_msgs
	ros-noetic/speech_recognition_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
