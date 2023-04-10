# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Provides service calls for getting ros meta-information, like list of\
	[...]"
HOMEPAGE="http://ros.org/wiki/rosapi"
SRC_URI="https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/humble/${PN}/1.3.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/builtin_interfaces
	ros-humble/rcl_interfaces
	ros-humble/rclpy
	ros-humble/ros2node
	ros-humble/ros2param
	ros-humble/ros2pkg
	ros-humble/ros2service
	ros-humble/ros2topic
	ros-humble/rosapi_msgs
	ros-humble/rosbridge_library
	test? ( ros-humble/ament_cmake_pytest )
	test? ( ros-humble/geometry_msgs )
	test? ( ros-humble/rmw_dds_common )
	test? ( ros-humble/sensor_msgs )
	test? ( ros-humble/shape_msgs )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
