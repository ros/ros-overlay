# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS stack  containing all nodes, config, and launch files for Nav2 mobile roboti"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/paulbovbel/nav2_platform-release/archive/release/indigo/nav2_platform/0.0.7-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/nav2_bringup
	ros-indigo/nav2_driver
	ros-indigo/nav2_navigation
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

