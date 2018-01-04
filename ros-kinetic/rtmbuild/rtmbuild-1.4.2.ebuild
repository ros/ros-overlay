# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Build scripts for OpenRTM and OpenHRP"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/rtmros_common-release/archive/release/kinetic/${PN}/1.4.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cmake_modules
	ros-kinetic/message_generation
	ros-kinetic/message_runtime
	ros-kinetic/openrtm_aist
	ros-kinetic/openrtm_aist_python
	ros-kinetic/rostest
	ros-kinetic/std_msgs
	virtual/blas
	virtual/lapack
	net-misc/omniORB
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
