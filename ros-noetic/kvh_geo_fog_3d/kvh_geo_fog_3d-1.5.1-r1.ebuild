# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Provides a driver node for KVH GEO FOG 3D INS sensors, messages, and rviz p[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/MITRE/${PN}-release/archive/release/noetic/${PN}/1.5.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/kvh_geo_fog_3d_driver
	ros-noetic/kvh_geo_fog_3d_msgs
	ros-noetic/kvh_geo_fog_3d_rviz
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
