# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Build scripts for OpenRTM and OpenHRP'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/rtmros_common-release/archive/release/indigo/rtmbuild/1.3.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cmake_modules
	ros-indigo/message_generation
	ros-indigo/message_runtime
	ros-indigo/openrtm_aist
	ros-indigo/openrtm_aist_python
	ros-indigo/rostest
	ros-indigo/std_msgs
	virtual/blas
	virtual/lapack
	net-misc/omniORB
	virtual/pkgconfig
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

