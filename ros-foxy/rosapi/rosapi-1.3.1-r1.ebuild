# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Provides service calls for getting ros meta-information, like list of\
	[...]"
HOMEPAGE="http://ros.org/wiki/rosapi"
SRC_URI="https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/foxy/${PN}/1.3.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/builtin_interfaces
	ros-foxy/rcl_interfaces
	ros-foxy/rclpy
	ros-foxy/ros2node
	ros-foxy/ros2param
	ros-foxy/ros2pkg
	ros-foxy/ros2service
	ros-foxy/ros2topic
	ros-foxy/rosapi_msgs
	ros-foxy/rosbridge_library
	test? ( ros-foxy/ament_cmake_pytest )
	test? ( ros-foxy/geometry_msgs )
	test? ( ros-foxy/rmw_dds_common )
	test? ( ros-foxy/sensor_msgs )
	test? ( ros-foxy/shape_msgs )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
