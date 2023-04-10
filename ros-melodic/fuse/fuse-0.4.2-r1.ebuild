# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The fuse metapackage"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/locusrobotics/${PN}-release/archive/release/melodic/${PN}/0.4.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/fuse_constraints
	ros-melodic/fuse_core
	ros-melodic/fuse_doc
	ros-melodic/fuse_graphs
	ros-melodic/fuse_models
	ros-melodic/fuse_msgs
	ros-melodic/fuse_optimizers
	ros-melodic/fuse_publishers
	ros-melodic/fuse_variables
	ros-melodic/fuse_viz
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
