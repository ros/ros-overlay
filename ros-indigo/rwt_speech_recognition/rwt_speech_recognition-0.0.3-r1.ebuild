# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The rwt_speech_recognition package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/visualization_rwt-release/archive/release/indigo/rwt_speech_recognition/0.0.3-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rosbridge_server
	ros-indigo/roswww
	ros-indigo/rwt_utils_3rdparty
	ros-indigo/speech_recognition_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

