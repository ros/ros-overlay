# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rosatomic provides the C++11-style atomic operations by pulling symbols fro[...]"
HOMEPAGE="http://ros.org/wiki/rosatomic"
SRC_URI="https://github.com/ros-gbp/ros_realtime-release/archive/release/noetic/${PN}/1.0.25-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="( BSD BSL-1.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
