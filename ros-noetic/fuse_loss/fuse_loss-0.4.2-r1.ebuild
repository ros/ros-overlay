# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The fuse_loss package provides a set of commonly used loss functions, such [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/locusrobotics/fuse-release/archive/release/noetic/${PN}/0.4.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/fuse_core
	ros-noetic/pluginlib
	ros-noetic/roscpp
	test? ( ros-noetic/roslint )
	sci-libs/ceres-solver[sparse,lapack]
	test? ( x11-libs/qwt:6 )
	test? ( dev-qt/qtcore:5 )
	test? ( dev-qt/qtwidgets:5 )
	test? ( dev-qt/qttest:5 )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
