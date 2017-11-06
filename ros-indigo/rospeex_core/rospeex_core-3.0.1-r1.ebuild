# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://bitbucket.org/rospeex/rospeex-release/get/release/indigo/rospeex_core/3.0.1-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rospack
	ros-indigo/rospeex_msgs
	ros-indigo/rospy
	virtual/ffmpeg
	sys-devel/multilib-gcc-wrapper
	sys-devel/multilib-gcc-wrapper
	virtual/ffmpeg
	dev-python/requests
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
