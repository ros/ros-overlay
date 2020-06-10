# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="camera_calibration_parsers contains routines for reading and writing camera[...]"
HOMEPAGE="http://ros.org/wiki/camera_calibration_parsers"
SRC_URI="https://github.com/ros-gbp/image_common-release/archive/release/noetic/${PN}/1.12.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/roscpp
	ros-noetic/roscpp_serialization
	ros-noetic/sensor_msgs
	test? ( ros-noetic/rosbash )
	test? ( ros-noetic/rosunit )
	dev-libs/boost[python]
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/rosconsole
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
