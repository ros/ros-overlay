# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Package for all inverse kinematics solvers in MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/moveit/moveit2-release/archive/release/galactic/${PN}/2.3.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/class_loader
	ros-galactic/moveit_core
	ros-galactic/moveit_msgs
	ros-galactic/orocos_kdl
	ros-galactic/pluginlib
	ros-galactic/tf2
	ros-galactic/tf2_kdl
	ros-galactic/urdfdom
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/moveit_resources_fanuc_description )
	test? ( ros-galactic/moveit_resources_fanuc_moveit_config )
	test? ( ros-galactic/moveit_resources_panda_description )
	test? ( ros-galactic/moveit_resources_panda_moveit_config )
	test? ( ros-galactic/moveit_ros_planning )
	test? ( ros-galactic/ros_testing )
	dev-cpp/eigen
	dev-python/lxml
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/moveit_common
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
