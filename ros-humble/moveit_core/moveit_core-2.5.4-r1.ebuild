# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Core libraries used by MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/humble/${PN}/2.5.4-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/angles
	ros-humble/common_interfaces
	ros-humble/eigen_stl_containers
	ros-humble/geometric_shapes
	ros-humble/geometry_msgs
	ros-humble/kdl_parser
	ros-humble/moveit_common
	ros-humble/moveit_msgs
	ros-humble/octomap
	ros-humble/octomap_msgs
	ros-humble/pluginlib
	ros-humble/pybind11_vendor
	ros-humble/random_numbers
	ros-humble/rclcpp
	ros-humble/ruckig
	ros-humble/sensor_msgs
	ros-humble/shape_msgs
	ros-humble/srdfdom
	ros-humble/std_msgs
	ros-humble/tf2
	ros-humble/tf2_eigen
	ros-humble/tf2_geometry_msgs
	ros-humble/trajectory_msgs
	ros-humble/urdf
	ros-humble/urdfdom
	ros-humble/urdfdom_headers
	ros-humble/visualization_msgs
	test? ( ros-humble/ament_cmake_gmock )
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_index_cpp )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/angles )
	test? ( ros-humble/moveit_resources_panda_moveit_config )
	test? ( ros-humble/moveit_resources_pr2_description )
	test? ( ros-humble/orocos_kdl_vendor )
	test? ( ros-humble/tf2_kdl )
	media-libs/assimp
	dev-libs/boost[python]
	sci-physics/bullet
	dev-cpp/eigen
	sci-libs/fcl
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/eigen3_cmake_module
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
