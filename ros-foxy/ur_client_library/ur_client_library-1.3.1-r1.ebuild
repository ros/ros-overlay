# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Standalone C++ library for accessing Universal Robots interfaces. This has [...]"
HOMEPAGE="http://wiki.ros.org/ur_client_library"
SRC_URI="https://github.com/UniversalRobots/Universal_Robots_Client_Library-release/archive/release/foxy/${PN}/1.3.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD-2-Clause Zlib )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/ament_cmake
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
