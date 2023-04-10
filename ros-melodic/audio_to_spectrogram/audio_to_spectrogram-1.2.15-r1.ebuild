# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Convert audio \(audio_common_msgs/AudioData\) to spectrogram \(sensor_msgs/[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/${PN}/1.2.15-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/audio_capture
	ros-melodic/audio_common_msgs
	ros-melodic/cv_bridge
	ros-melodic/image_view
	ros-melodic/jsk_recognition_msgs
	ros-melodic/sensor_msgs
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/rostest )
	dev-python/matplotlib
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
