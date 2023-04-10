# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="A WebSocket interface to rosbridge."
HOMEPAGE="http://ros.org/wiki/rosbridge_server"
SRC_URI="https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/humble/${PN}/1.3.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/rclpy
	ros-humble/rosapi
	ros-humble/rosbridge_library
	ros-humble/rosbridge_msgs
	test? ( ros-humble/launch )
	test? ( ros-humble/launch_ros )
	test? ( ros-humble/launch_testing )
	test? ( ros-humble/launch_testing_ament_cmake )
	test? ( ros-humble/launch_testing_ros )
	test? ( ros-humble/std_srvs )
	www-servers/tornado
	dev-python/twisted
	test? ( dev-python/autobahn )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
