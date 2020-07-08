# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A recovery behavior that uses the sbpl lattice planner and the pose\
	fo[...]"
HOMEPAGE="http://wiki.ros.org/sbpl_recovery"
SRC_URI="https://github.com/ros-gbp/navigation_experimental-release/archive/release/noetic/${PN}/0.3.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/base_local_planner
	ros-noetic/costmap_2d
	ros-noetic/nav_core
	ros-noetic/pluginlib
	ros-noetic/pose_follower
	ros-noetic/roscpp
	ros-noetic/sbpl_lattice_planner
	ros-noetic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
