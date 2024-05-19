# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="<p>Metapackage that contains commonly used 3rdparty toolset for jsk-ros-pkg</p>"
HOMEPAGE="http://ros.org/wiki/jsk_3rdparty"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/noetic/${PN}/2.1.28-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/aques_talk
	ros-noetic/assimp_devel
	ros-noetic/bayesian_belief_networks
	ros-noetic/chaplus_ros
	ros-noetic/collada_urdf_jsk_patch
	ros-noetic/dialogflow_task_executive
	ros-noetic/downward
	ros-noetic/ff
	ros-noetic/ffha
	ros-noetic/google_chat_ros
	ros-noetic/google_cloud_texttospeech
	ros-noetic/influxdb_store
	ros-noetic/julius
	ros-noetic/julius_ros
	ros-noetic/libcmt
	ros-noetic/libsiftfast
	ros-noetic/lpg_planner
	ros-noetic/mini_maxwell
	ros-noetic/nfc_ros
	ros-noetic/opt_camera
	ros-noetic/osqp
	ros-noetic/pgm_learner
	ros-noetic/respeaker_ros
	ros-noetic/ros_google_cloud_language
	ros-noetic/ros_speech_recognition
	ros-noetic/rospatlite
	ros-noetic/rosping
	ros-noetic/rostwitter
	ros-noetic/sesame_ros
	ros-noetic/slic
	ros-noetic/switchbot_ros
	ros-noetic/voice_text
	ros-noetic/webrtcvad_ros
	ros-noetic/zdepth
	ros-noetic/zdepth_image_transport
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
