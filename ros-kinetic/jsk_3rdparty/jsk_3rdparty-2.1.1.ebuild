# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="p"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/jsk_3rdparty/2.1.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/assimp_devel
	ros-kinetic/bayesian_belief_networks
	ros-kinetic/downward
	ros-kinetic/ff
	ros-kinetic/ffha
	ros-kinetic/julius
	ros-kinetic/libcmt
	ros-kinetic/libsiftfast
	ros-kinetic/mini_maxwell
	ros-kinetic/nlopt
	ros-kinetic/opt_camera
	ros-kinetic/pgm_learner
	ros-kinetic/rospatlite
	ros-kinetic/rosping
	ros-kinetic/slic
	ros-kinetic/voice_text
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

