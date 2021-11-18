# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="This package contains generic definitions of geometric shapes and bodies."
HOMEPAGE="http://ros.org/wiki/geometric_shapes"
SRC_URI="https://github.com/moveit/${PN}-release/archive/release/galactic/${PN}/2.1.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/console_bridge_vendor
	ros-galactic/eigen_stl_containers
	ros-galactic/geometry_msgs
	ros-galactic/octomap
	ros-galactic/random_numbers
	ros-galactic/rclcpp
	ros-galactic/resource_retriever
	ros-galactic/rosidl_default_runtime
	ros-galactic/shape_msgs
	ros-galactic/visualization_msgs
	test? ( ros-galactic/ament_cmake_copyright )
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_cmake )
	media-libs/assimp
	dev-cpp/eigen
	dev-libs/boost
	dev-libs/boost
	media-libs/qhull
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/eigen3_cmake_module
	ros-galactic/rosidl_default_generators
	media-libs/assimp
	dev-libs/boost[python]
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
