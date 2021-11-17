# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Convert audio \(audio_common_msgs/AudioData\) to spectrogram \(sensor_msgs/[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/${PN}/1.2.15-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/audio_capture
	ros-noetic/audio_common_msgs
	ros-noetic/cv_bridge
	ros-noetic/image_view
	ros-noetic/jsk_recognition_msgs
	ros-noetic/sensor_msgs
	test? ( ros-noetic/roslaunch )
	test? ( ros-noetic/rostest )
	dev-python/matplotlib
	dev-python/matplotlib
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
