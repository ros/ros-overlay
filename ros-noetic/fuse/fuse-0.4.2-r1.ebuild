# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The fuse metapackage"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/locusrobotics/${PN}-release/archive/release/noetic/${PN}/0.4.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/fuse_constraints
	ros-noetic/fuse_core
	ros-noetic/fuse_doc
	ros-noetic/fuse_graphs
	ros-noetic/fuse_models
	ros-noetic/fuse_msgs
	ros-noetic/fuse_optimizers
	ros-noetic/fuse_publishers
	ros-noetic/fuse_variables
	ros-noetic/fuse_viz
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
