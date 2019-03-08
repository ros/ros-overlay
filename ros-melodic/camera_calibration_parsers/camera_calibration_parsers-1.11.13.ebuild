# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="camera_calibration_parsers contains routines for reading and writing camera[...]"
HOMEPAGE="http://ros.org/wiki/camera_calibration_parsers"
SRC_URI="https://github.com/ros-gbp/image_common-release/archive/release/melodic/${PN}/1.11.13-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/roscpp
	ros-melodic/roscpp_serialization
	ros-melodic/sensor_msgs
	test? ( ros-melodic/rosbash )
	test? ( ros-melodic/rosunit )
	dev-libs/boost
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/rosconsole
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

src_prepare() {
        cd ${P}
        EPATCH_SOURCE="${FILESDIR}" EPATCH_SUFFIX="patch" \
        EPATCH_FORCE="yes" epatch
        ros-cmake_src_prepare
}

