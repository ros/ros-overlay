# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The fuse_optimizers package provides a set of optimizer implementations. An[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/locusrobotics/fuse-release/archive/release/noetic/${PN}/0.4.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/diagnostic_updater
	ros-noetic/fuse_constraints
	ros-noetic/fuse_core
	ros-noetic/fuse_graphs
	ros-noetic/fuse_variables
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/std_srvs
	test? ( ros-noetic/fuse_models )
	test? ( ros-noetic/geometry_msgs )
	test? ( ros-noetic/nav_msgs )
	test? ( ros-noetic/roslint )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
