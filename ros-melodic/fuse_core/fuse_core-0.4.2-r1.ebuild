# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The fuse_core package provides the base class interfaces for the various fu[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/locusrobotics/fuse-release/archive/release/melodic/${PN}/0.4.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/fuse_msgs
	ros-melodic/pluginlib
	ros-melodic/rosconsole
	ros-melodic/roscpp
	test? ( ros-melodic/roslint )
	test? ( ros-melodic/rostest )
	dev-cpp/eigen
	sci-libs/ceres-solver[sparse,lapack]
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
