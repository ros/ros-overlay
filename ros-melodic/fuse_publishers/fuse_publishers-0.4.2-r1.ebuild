# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The fuse_publishers package provides a set of common publisher plugins."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/locusrobotics/fuse-release/archive/release/melodic/${PN}/0.4.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/fuse_core
	ros-melodic/fuse_variables
	ros-melodic/geometry_msgs
	ros-melodic/nav_msgs
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/tf2
	ros-melodic/tf2_geometry_msgs
	ros-melodic/tf2_ros
	test? ( ros-melodic/fuse_constraints )
	test? ( ros-melodic/fuse_graphs )
	test? ( ros-melodic/roslint )
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
