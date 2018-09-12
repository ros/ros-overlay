# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>Metapackage that contains commonly used 3rdparty toolset for jsk-ros-pkg</p>"
HOMEPAGE="http://ros.org/wiki/jsk_3rdparty"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/indigo/${PN}/2.1.11-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/assimp_devel
	ros-indigo/bayesian_belief_networks
	ros-indigo/downward
	ros-indigo/ff
	ros-indigo/ffha
	ros-indigo/julius
	ros-indigo/julius_ros
	ros-indigo/libcmt
	ros-indigo/libsiftfast
	ros-indigo/mini_maxwell
	ros-indigo/nlopt
	ros-indigo/opt_camera
	ros-indigo/pgm_learner
	ros-indigo/rospatlite
	ros-indigo/rosping
	ros-indigo/rostwitter
	ros-indigo/slic
	ros-indigo/voice_text
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
