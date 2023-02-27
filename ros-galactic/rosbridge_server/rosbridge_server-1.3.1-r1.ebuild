# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A WebSocket interface to rosbridge."
HOMEPAGE="http://ros.org/wiki/rosbridge_server"
SRC_URI="https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/galactic/${PN}/1.3.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/rclpy
	ros-galactic/rosapi
	ros-galactic/rosbridge_library
	ros-galactic/rosbridge_msgs
	test? ( ros-galactic/launch )
	test? ( ros-galactic/launch_ros )
	test? ( ros-galactic/launch_testing )
	test? ( ros-galactic/launch_testing_ament_cmake )
	test? ( ros-galactic/launch_testing_ros )
	test? ( ros-galactic/std_srvs )
	www-servers/tornado
	dev-python/twisted
	test? ( dev-python/autobahn )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
