# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="ROS wrapper for Python SpeechRecognition library"
HOMEPAGE="https://pypi.python.org/pypi/SpeechRecognition/"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/${PN}/2.1.28-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/audio_capture
	ros-noetic/audio_common_msgs
	ros-noetic/dynamic_reconfigure
	ros-noetic/jsk_data
	ros-noetic/sound_play
	ros-noetic/speech_recognition_msgs
	test? ( ros-noetic/roslaunch )
	test? ( ros-noetic/rostest )
	media-libs/flac
	dev-python/python-gnupg
	dev-python/pycryptodome
	x11-themes/sound-theme-freedesktop
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/catkin_virtualenv
	sys-devel/gcc
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
