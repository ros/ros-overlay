# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="voxel_grid provides an implementation of an efficient 3D voxel grid. The oc[...]"
HOMEPAGE="http://wiki.ros.org/voxel_grid"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/indigo/${PN}/1.12.15-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/roscpp
	test? ( ros-indigo/rosunit )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
