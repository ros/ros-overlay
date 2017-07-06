# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The fulanghua_ekf_2d package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/DaikiMaekawa/fulanghua_navigation-release/archive/release/indigo/fulanghua_ekf_2d/0.0.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ecl_eigen
	ros-indigo/geometry_msgs
	ros-indigo/nav_msgs
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/tf
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

