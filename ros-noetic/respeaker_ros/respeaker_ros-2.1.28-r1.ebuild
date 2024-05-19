# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The respeaker_ros package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/${PN}/2.1.28-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-1.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/angles
	ros-noetic/audio_common_msgs
	ros-noetic/dynamic_reconfigure
	ros-noetic/geometry_msgs
	ros-noetic/speech_recognition_msgs
	ros-noetic/std_msgs
	ros-noetic/tf
	test? ( ros-noetic/jsk_tools )
	test? ( ros-noetic/rostest )
	media-libs/flac
	dev-python/numpy
	dev-python/pyaudio
	dev-python/numpy
	dev-python/pyaudio
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/catkin_virtualenv
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
