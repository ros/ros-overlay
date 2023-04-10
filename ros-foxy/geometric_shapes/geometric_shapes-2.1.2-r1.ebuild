# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="This package contains generic definitions of geometric shapes and bodies."
HOMEPAGE="http://ros.org/wiki/geometric_shapes"
SRC_URI="https://github.com/moveit/${PN}-release/archive/release/foxy/${PN}/2.1.2-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/console_bridge_vendor
	ros-foxy/eigen_stl_containers
	ros-foxy/geometry_msgs
	ros-foxy/octomap
	ros-foxy/random_numbers
	ros-foxy/rclcpp
	ros-foxy/resource_retriever
	ros-foxy/rosidl_default_runtime
	ros-foxy/shape_msgs
	ros-foxy/visualization_msgs
	test? ( ros-foxy/ament_cmake_copyright )
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_cmake )
	media-libs/assimp
	dev-cpp/eigen
	dev-libs/boost
	dev-libs/boost
	media-libs/qhull
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/eigen3_cmake_module
	ros-foxy/rosidl_default_generators
	media-libs/assimp
	dev-libs/boost[python]
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
