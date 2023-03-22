# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Eclipse iceoryx inter-process-communication \(IPC\) middleware Posix Shared[...]"
HOMEPAGE="https://iceoryx.io"
SRC_URI="https://github.com/ros2-gbp/iceoryx-release/archive/release/humble/${PN}/2.0.3-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/iceoryx_hoofs
"
DEPEND="${RDEPEND}
	dev-util/cmake
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
