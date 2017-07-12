# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="installerpy installs a full eclipse installation in this package Additionally "
HOMEPAGE="http://ros.org/wiki/bride"
SRC_URI="https://github.com/ipa320/bride-release/archive/release/indigo/bride/0.3.3-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/bride_compilers
	ros-indigo/bride_templates
	ros-indigo/bride_tutorials
	virtual/jdk
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rospack
	net-misc/curl
	sys-devel/multilib-gcc-wrapper
	sys-devel/multilib-gcc-wrapper
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

