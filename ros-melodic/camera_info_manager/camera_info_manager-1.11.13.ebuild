# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides a C++ interface for camera calibration\
	 informat[...]"
HOMEPAGE="http://ros.org/wiki/camera_info_manager"
SRC_URI="https://github.com/ros-gbp/image_common-release/archive/release/melodic/${PN}/1.11.13-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/camera_calibration_parsers
	ros-melodic/image_transport
	ros-melodic/roscpp
	ros-melodic/roslib
	ros-melodic/sensor_msgs
	dev-libs/boost
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
