# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Extra nodes and plugins for <a href=\"http://wiki.ros.org/mavros\">MAVROS</a>."
HOMEPAGE="http://wiki.ros.org/mavros_extras"
SRC_URI="https://github.com/mavlink/mavros-release/archive/release/lunar/${PN}/0.23.2-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="( GPL-3 LGPL-2 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/mavros
	ros-lunar/mavros_msgs
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/tf
	ros-lunar/urdf
	ros-lunar/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
