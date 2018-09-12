# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>Metapackage that contains commonly used 3rdparty toolset for jsk-ros-pkg</p>"
HOMEPAGE="http://ros.org/wiki/jsk_3rdparty"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/lunar/${PN}/2.1.11-2.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/assimp_devel
	ros-lunar/bayesian_belief_networks
	ros-lunar/downward
	ros-lunar/ff
	ros-lunar/ffha
	ros-lunar/julius
	ros-lunar/julius_ros
	ros-lunar/libcmt
	ros-lunar/libsiftfast
	ros-lunar/mini_maxwell
	ros-lunar/nlopt
	ros-lunar/opt_camera
	ros-lunar/pgm_learner
	ros-lunar/rospatlite
	ros-lunar/rosping
	ros-lunar/rostwitter
	ros-lunar/slic
	ros-lunar/voice_text
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
