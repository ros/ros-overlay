# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Generates a configuration package that makes it easy to use MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/moveit/moveit2-release/archive/release/galactic/${PN}/2.3.4-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ament_index_cpp
	ros-galactic/moveit_core
	ros-galactic/moveit_ros_planning
	ros-galactic/moveit_ros_visualization
	ros-galactic/rclcpp
	ros-galactic/srdfdom
	ros-galactic/urdf
	ros-galactic/xacro
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/moveit_resources_panda_moveit_config )
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/moveit_common
	ros-galactic/ompl
	dev-games/ogre
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
