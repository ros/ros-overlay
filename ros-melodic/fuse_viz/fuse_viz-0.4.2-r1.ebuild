# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The fuse_viz package provides visualization tools for fuse."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/locusrobotics/fuse-release/archive/release/melodic/${PN}/0.4.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/fuse_constraints
	ros-melodic/fuse_core
	ros-melodic/fuse_msgs
	ros-melodic/fuse_variables
	ros-melodic/geometry_msgs
	ros-melodic/rviz
	ros-melodic/tf2_geometry_msgs
	test? ( ros-melodic/roslint )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
