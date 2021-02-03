# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="This avoids use of dynamic storage \(malloc/new\) and thread safety \(mutex[...]"
HOMEPAGE="http://wiki.ros.org/ecl_sigslots_lite"
SRC_URI="https://github.com/yujinrobot-release/ecl_lite-release/archive/release/noetic/${PN}/0.61.6-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/ecl_config
	ros-noetic/ecl_errors
	ros-noetic/ecl_license
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
