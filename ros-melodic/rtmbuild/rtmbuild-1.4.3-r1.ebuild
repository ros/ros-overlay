# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Build scripts for OpenRTM and OpenHRP"
HOMEPAGE="http://ros.org/wiki/rtmbuild"
SRC_URI="https://github.com/tork-a/rtmros_common-release/archive/release/melodic/${PN}/1.4.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cmake_modules
	ros-melodic/message_generation
	ros-melodic/message_runtime
	ros-melodic/openrtm_aist
	ros-melodic/openrtm_aist_python
	ros-melodic/rostest
	ros-melodic/std_msgs
	virtual/blas
	virtual/lapack
	net-misc/omniORB
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
