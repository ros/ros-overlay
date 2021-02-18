# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="ROSaic: C++ driver for Septentrio\'s mosaic receivers and beyond"
HOMEPAGE="https://github.com/septentrio-gnss/septentrio_gnss_driver"
SRC_URI="https://github.com/septentrio-users/${PN}-release/archive/release/noetic/${PN}/1.0.6-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cpp_common
	ros-noetic/diagnostic_msgs
	ros-noetic/geometry_msgs
	ros-noetic/gps_common
	ros-noetic/message_runtime
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/roscpp_serialization
	ros-noetic/rostime
	ros-noetic/sensor_msgs
	ros-noetic/xmlrpcpp
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
