# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Generic definitions of geometric shapes and bodies."
HOMEPAGE="http://ros.org/wiki/geometric_shapes"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/0.7.6-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/eigen_stl_containers
	ros-noetic/fcl
	ros-noetic/octomap
	ros-noetic/random_numbers
	ros-noetic/resource_retriever
	ros-noetic/shape_msgs
	ros-noetic/visualization_msgs
	test? ( ros-noetic/rosunit )
	media-libs/assimp
	media-libs/assimp
	dev-libs/boost[python]
	dev-cpp/eigen
	dev-libs/console_bridge
	sci-libs/fcl
	media-libs/qhull
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
