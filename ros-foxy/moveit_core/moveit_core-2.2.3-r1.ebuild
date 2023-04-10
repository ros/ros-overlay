# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Core libraries used by MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/moveit/moveit2-release/archive/release/foxy/${PN}/2.2.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/angles
	ros-foxy/common_interfaces
	ros-foxy/eigen_stl_containers
	ros-foxy/geometric_shapes
	ros-foxy/geometry_msgs
	ros-foxy/kdl_parser
	ros-foxy/moveit_msgs
	ros-foxy/octomap
	ros-foxy/octomap_msgs
	ros-foxy/pluginlib
	ros-foxy/pybind11_vendor
	ros-foxy/random_numbers
	ros-foxy/rclcpp
	ros-foxy/sensor_msgs
	ros-foxy/shape_msgs
	ros-foxy/srdfdom
	ros-foxy/std_msgs
	ros-foxy/tf2
	ros-foxy/tf2_eigen
	ros-foxy/tf2_geometry_msgs
	ros-foxy/trajectory_msgs
	ros-foxy/urdf
	ros-foxy/urdfdom
	ros-foxy/urdfdom_headers
	ros-foxy/visualization_msgs
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_index_cpp )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/angles )
	test? ( ros-foxy/moveit_resources_panda_moveit_config )
	test? ( ros-foxy/moveit_resources_pr2_description )
	test? ( ros-foxy/orocos_kdl )
	test? ( ros-foxy/tf2_kdl )
	media-libs/assimp
	dev-libs/boost[python]
	sci-physics/bullet
	dev-cpp/eigen
	sci-libs/fcl
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/eigen3_cmake_module
	ros-foxy/moveit_common
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
