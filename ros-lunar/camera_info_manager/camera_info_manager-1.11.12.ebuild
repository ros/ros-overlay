# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="This package provides a C++ interface for camera calibration
	 information.  "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/image_common-release/archive/release/lunar/camera_info_manager/1.11.12-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/camera_calibration_parsers
	ros-lunar/image_transport
	ros-lunar/roscpp
	ros-lunar/roslib
	ros-lunar/sensor_msgs
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/rostest
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

