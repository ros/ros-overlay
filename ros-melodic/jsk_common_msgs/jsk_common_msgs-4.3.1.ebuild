# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>Metapackage that contains commonly used messages for jsk-ros-pkg</p>"
HOMEPAGE="http://ros.org/wiki/jsk_common_msgs"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/melodic/${PN}/4.3.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/jsk_footstep_msgs
	ros-melodic/jsk_gui_msgs
	ros-melodic/jsk_hark_msgs
	ros-melodic/posedetection_msgs
	ros-melodic/speech_recognition_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
