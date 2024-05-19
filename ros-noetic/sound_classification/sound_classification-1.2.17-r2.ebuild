# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The sound_classification package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/${PN}/1.2.17-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/audio_capture
	ros-noetic/audio_to_spectrogram
	ros-noetic/image_view
	ros-noetic/jsk_recognition_msgs
	ros-noetic/jsk_topic_tools
	ros-noetic/message_filters
	ros-noetic/message_runtime
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	test? ( ros-noetic/roslaunch )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/catkin_virtualenv
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
