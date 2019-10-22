# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The sbpl_lattice_planner is a global planner plugin for move_base and wraps[...]"
HOMEPAGE="http://wiki.ros.org/sbpl_lattice_planner"
SRC_URI="https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/${PN}/0.3.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/costmap_2d
	ros-melodic/geometry_msgs
	ros-melodic/message_runtime
	ros-melodic/nav_core
	ros-melodic/nav_msgs
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/sbpl
	ros-melodic/tf2
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
