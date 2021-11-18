# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Eclipse iceoryx inter-process-communication \(IPC\) middleware C-Language B[...]"
HOMEPAGE="https://iceoryx.io"
SRC_URI="https://github.com/ros2-gbp/iceoryx-release/archive/release/galactic/${PN}/1.0.0-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-galactic/iceoryx_posh
	ros-galactic/iceoryx_utils
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
