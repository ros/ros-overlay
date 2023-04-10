# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="This package contains generic definitions of geometric shapes and bodies."
HOMEPAGE="http://ros.org/wiki/geometric_shapes"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/2.1.3-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/console_bridge_vendor
	ros-humble/eigen_stl_containers
	ros-humble/geometry_msgs
	ros-humble/octomap
	ros-humble/random_numbers
	ros-humble/rclcpp
	ros-humble/resource_retriever
	ros-humble/rosidl_default_runtime
	ros-humble/shape_msgs
	ros-humble/visualization_msgs
	test? ( ros-humble/ament_cmake_copyright )
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_cmake )
	media-libs/assimp
	dev-cpp/eigen
	dev-libs/boost
	dev-libs/boost
	media-libs/qhull
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/eigen3_cmake_module
	ros-humble/rosidl_default_generators
	media-libs/assimp
	dev-libs/boost[python]
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
