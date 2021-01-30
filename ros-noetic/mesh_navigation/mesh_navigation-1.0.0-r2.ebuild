# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The mesh_navigation package provides a layered mesh_map implementation, a M[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uos-gbp/${PN}-release/archive/release/noetic/${PN}/1.0.0-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/dijkstra_mesh_planner
	ros-noetic/mbf_mesh_core
	ros-noetic/mbf_mesh_nav
	ros-noetic/mesh_client
	ros-noetic/mesh_controller
	ros-noetic/mesh_layers
	ros-noetic/mesh_map
	ros-noetic/wave_front_planner
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
