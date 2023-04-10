# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The mesh_navigation package provides a layered mesh_map implementation, a M[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uos-gbp/${PN}-release/archive/release/melodic/${PN}/1.0.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cvp_mesh_planner
	ros-melodic/dijkstra_mesh_planner
	ros-melodic/mbf_mesh_core
	ros-melodic/mbf_mesh_nav
	ros-melodic/mesh_client
	ros-melodic/mesh_controller
	ros-melodic/mesh_layers
	ros-melodic/mesh_map
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
