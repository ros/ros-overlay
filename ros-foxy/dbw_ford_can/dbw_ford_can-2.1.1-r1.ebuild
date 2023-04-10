# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Drive-by-wire interface to the Dataspeed Inc. Ford DBW kit"
HOMEPAGE="http://dataspeedinc.com"
SRC_URI="https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/foxy/${PN}/2.1.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/can_msgs
	ros-foxy/dataspeed_can_usb
	ros-foxy/dataspeed_dbw_common
	ros-foxy/dataspeed_dbw_gateway
	ros-foxy/dataspeed_ulc_can
	ros-foxy/dbw_ford_description
	ros-foxy/dbw_ford_msgs
	ros-foxy/geometry_msgs
	ros-foxy/rclcpp
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	test? ( ros-foxy/ament_cmake_gtest )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/dataspeed_can_msg_filters
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
