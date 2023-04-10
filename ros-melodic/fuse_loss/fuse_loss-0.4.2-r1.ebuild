# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The fuse_loss package provides a set of commonly used loss functions, such [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/locusrobotics/fuse-release/archive/release/melodic/${PN}/0.4.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/fuse_core
	ros-melodic/pluginlib
	ros-melodic/roscpp
	test? ( ros-melodic/roslint )
	sci-libs/ceres-solver[sparse,lapack]
	test? ( x11-libs/qwt:6 )
	test? ( dev-qt/qtcore:5 )
	test? ( dev-qt/qtwidgets:5 )
	test? ( dev-qt/qttest:5 )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
