# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="hector_gazebo_worlds provides gazebo scenarios used by Team Hector Darmstadt"
HOMEPAGE="http://ros.org/wiki/hector_gazebo_worlds"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/lunar/${PN}/0.5.1-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/gazebo_ros
	ros-lunar/hector_gazebo_plugins
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
