# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Asynchronous Web/WebSocket Server in C++"
HOMEPAGE="http://ros.org/wiki/async_web_server_cpp"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/2.0.0-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-humble/launch_testing )
	dev-libs/boost[python]
	test? ( dev-python/websocket-client )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_ros
	dev-libs/openssl
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
