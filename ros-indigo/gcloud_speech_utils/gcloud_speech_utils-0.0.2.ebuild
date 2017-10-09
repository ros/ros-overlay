# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Utilities and examples for gcloud_speech package."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/CogRobRelease/gcloud_speech-release/archive/release/indigo/gcloud_speech_utils/0.0.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/gcloud_speech_msgs
	dev-cpp/gflags
	dev-cpp/glog
	=media-libs/portaudio-19*
	dev-python/pyaudio
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
