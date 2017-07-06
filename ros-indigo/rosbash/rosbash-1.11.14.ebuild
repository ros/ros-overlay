# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Assorted shell commands for using ros with bash.'"
HOMEPAGE="http://www.ros.org/wiki/rosbash"
SRC_URI="https://github.com/ros-gbp/ros-release/archive/release/indigo/rosbash/1.11.14-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/catkin
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

