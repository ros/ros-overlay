# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Core libraries used by MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/moveit/moveit2-release/archive/release/galactic/${PN}/2.3.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/angles
	ros-galactic/common_interfaces
	ros-galactic/eigen_stl_containers
	ros-galactic/geometric_shapes
	ros-galactic/geometry_msgs
	ros-galactic/kdl_parser
	ros-galactic/moveit_msgs
	ros-galactic/octomap
	ros-galactic/octomap_msgs
	ros-galactic/pluginlib
	ros-galactic/pybind11_vendor
	ros-galactic/random_numbers
	ros-galactic/rclcpp
	ros-galactic/ruckig
	ros-galactic/sensor_msgs
	ros-galactic/shape_msgs
	ros-galactic/srdfdom
	ros-galactic/std_msgs
	ros-galactic/tf2
	ros-galactic/tf2_eigen
	ros-galactic/tf2_geometry_msgs
	ros-galactic/trajectory_msgs
	ros-galactic/urdf
	ros-galactic/urdfdom
	ros-galactic/urdfdom_headers
	ros-galactic/visualization_msgs
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_index_cpp )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/angles )
	test? ( ros-galactic/moveit_resources_panda_moveit_config )
	test? ( ros-galactic/moveit_resources_pr2_description )
	test? ( ros-galactic/orocos_kdl )
	test? ( ros-galactic/tf2_kdl )
	media-libs/assimp
	dev-libs/boost[python]
	sci-physics/bullet
	dev-cpp/eigen
	sci-libs/fcl
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/eigen3_cmake_module
	ros-galactic/moveit_common
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
