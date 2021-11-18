# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Provides service calls for getting ros meta-information, like list of\
	[...]"
HOMEPAGE="http://ros.org/wiki/rosapi"
SRC_URI="https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/galactic/${PN}/1.1.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/builtin_interfaces
	ros-galactic/rcl_interfaces
	ros-galactic/rclpy
	ros-galactic/ros2node
	ros-galactic/ros2param
	ros-galactic/ros2pkg
	ros-galactic/ros2service
	ros-galactic/ros2topic
	ros-galactic/rosapi_msgs
	ros-galactic/rosbridge_library
	test? ( ros-galactic/ament_cmake_pytest )
	test? ( ros-galactic/geometry_msgs )
	test? ( ros-galactic/rmw_dds_common )
	test? ( ros-galactic/sensor_msgs )
	test? ( ros-galactic/shape_msgs )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
