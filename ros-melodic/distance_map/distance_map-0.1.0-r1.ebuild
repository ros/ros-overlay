# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The distance_map metapackage"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/artivis/${PN}-release/archive/release/melodic/${PN}/0.1.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/distance_map_core
	ros-melodic/distance_map_deadreck
	ros-melodic/distance_map_msgs
	ros-melodic/distance_map_node
	ros-melodic/distance_map_opencv
	ros-melodic/distance_map_rviz
	ros-melodic/distance_map_tools
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
