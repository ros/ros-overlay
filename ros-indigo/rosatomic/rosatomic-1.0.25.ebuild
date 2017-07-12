# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="rosatomic provides the C11style atomic operations by pulling symbols from the"
HOMEPAGE="http://ros.org/wiki/rosatomic"
SRC_URI="https://github.com/ros-gbp/ros_realtime-release/archive/release/indigo/rosatomic/1.0.25-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="( BSD CC-BY-SA-3.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

