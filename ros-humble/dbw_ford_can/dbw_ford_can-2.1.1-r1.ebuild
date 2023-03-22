# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Drive-by-wire interface to the Dataspeed Inc. Ford DBW kit"
HOMEPAGE="http://dataspeedinc.com"
SRC_URI="https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/${PN}/2.1.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/can_msgs
	ros-humble/dataspeed_can_usb
	ros-humble/dataspeed_dbw_common
	ros-humble/dataspeed_dbw_gateway
	ros-humble/dataspeed_ulc_can
	ros-humble/dbw_ford_description
	ros-humble/dbw_ford_msgs
	ros-humble/geometry_msgs
	ros-humble/rclcpp
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	test? ( ros-humble/ament_cmake_gtest )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/dataspeed_can_msg_filters
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
