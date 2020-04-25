# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>Metapackage that contains commonly used 3rdparty toolset for jsk-ros-pkg</p>"
HOMEPAGE="http://ros.org/wiki/jsk_3rdparty"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/melodic/${PN}/2.1.17-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/assimp_devel
	ros-melodic/bayesian_belief_networks
	ros-melodic/dialogflow_task_executive
	ros-melodic/downward
	ros-melodic/ff
	ros-melodic/ffha
	ros-melodic/gdrive_ros
	ros-melodic/julius
	ros-melodic/julius_ros
	ros-melodic/libcmt
	ros-melodic/libsiftfast
	ros-melodic/mini_maxwell
	ros-melodic/nlopt
	ros-melodic/opt_camera
	ros-melodic/pgm_learner
	ros-melodic/rospatlite
	ros-melodic/rosping
	ros-melodic/rostwitter
	ros-melodic/sesame_ros
	ros-melodic/slic
	ros-melodic/voice_text
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
