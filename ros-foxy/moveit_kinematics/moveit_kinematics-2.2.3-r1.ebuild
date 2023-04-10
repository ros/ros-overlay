# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Package for all inverse kinematics solvers in MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/moveit/moveit2-release/archive/release/foxy/${PN}/2.2.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/class_loader
	ros-foxy/moveit_core
	ros-foxy/moveit_msgs
	ros-foxy/orocos_kdl
	ros-foxy/pluginlib
	ros-foxy/tf2
	ros-foxy/tf2_kdl
	ros-foxy/urdfdom
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/moveit_resources_fanuc_description )
	test? ( ros-foxy/moveit_resources_fanuc_moveit_config )
	test? ( ros-foxy/moveit_resources_panda_description )
	test? ( ros-foxy/moveit_resources_panda_moveit_config )
	test? ( ros-foxy/moveit_ros_planning )
	test? ( ros-foxy/ros_testing )
	dev-cpp/eigen
	dev-python/lxml
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/moveit_common
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
