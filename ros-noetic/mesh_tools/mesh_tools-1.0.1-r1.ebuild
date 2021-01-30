# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The mesh_tools package"
HOMEPAGE="http://wiki.ros.org/mesh_tools"
SRC_URI="https://github.com/uos-gbp/mesh-tools/archive/release/noetic/${PN}/1.0.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/hdf5_map_io
	ros-noetic/label_manager
	ros-noetic/mesh_msgs
	ros-noetic/mesh_msgs_conversions
	ros-noetic/mesh_msgs_transform
	ros-noetic/rviz_map_plugin
	ros-noetic/rviz_mesh_plugin
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
