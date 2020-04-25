# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>Metapackage that contains commonly used 3rdparty toolset for jsk-ros-pkg</p>"
HOMEPAGE="http://ros.org/wiki/jsk_3rdparty"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/kinetic/${PN}/2.1.17-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/assimp_devel
	ros-kinetic/bayesian_belief_networks
	ros-kinetic/dialogflow_task_executive
	ros-kinetic/downward
	ros-kinetic/ff
	ros-kinetic/ffha
	ros-kinetic/gdrive_ros
	ros-kinetic/julius
	ros-kinetic/julius_ros
	ros-kinetic/libcmt
	ros-kinetic/libsiftfast
	ros-kinetic/mini_maxwell
	ros-kinetic/nlopt
	ros-kinetic/opt_camera
	ros-kinetic/pgm_learner
	ros-kinetic/rospatlite
	ros-kinetic/rosping
	ros-kinetic/sesame_ros
	ros-kinetic/slic
	ros-kinetic/voice_text
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
