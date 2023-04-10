# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="A WebSocket interface to rosbridge."
HOMEPAGE="http://ros.org/wiki/rosbridge_server"
SRC_URI="https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/foxy/${PN}/1.3.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/rclpy
	ros-foxy/rosapi
	ros-foxy/rosbridge_library
	ros-foxy/rosbridge_msgs
	test? ( ros-foxy/launch )
	test? ( ros-foxy/launch_ros )
	test? ( ros-foxy/launch_testing )
	test? ( ros-foxy/launch_testing_ament_cmake )
	test? ( ros-foxy/launch_testing_ros )
	test? ( ros-foxy/std_srvs )
	www-servers/tornado
	dev-python/twisted
	test? ( dev-python/autobahn )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
