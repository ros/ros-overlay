# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Asynchronous Web/WebSocket Server in C++"
HOMEPAGE="http://ros.org/wiki/async_web_server_cpp"
SRC_URI="https://github.com/fkie-release/${PN}-release/archive/release/foxy/${PN}/2.0.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-foxy/launch_testing )
	dev-libs/boost[python]
	test? ( dev-python/websocket-client )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_ros
	dev-libs/openssl
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
