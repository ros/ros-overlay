# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains generic definitions of geometric shapes and bodies."
HOMEPAGE="http://ros.org/wiki/geometric_shapes"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/0.7.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/eigen_stl_containers
	ros-noetic/octomap
	ros-noetic/random_numbers
	ros-noetic/resource_retriever
	ros-noetic/shape_msgs
	ros-noetic/visualization_msgs
	test? ( ros-noetic/rosunit )
	media-libs/assimp
	dev-libs/boost[python]
	dev-cpp/eigen
	dev-libs/console_bridge
	media-libs/qhull
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	media-libs/assimp
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
