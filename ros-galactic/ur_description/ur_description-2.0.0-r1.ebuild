# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="URDF description for Universal Robots"
HOMEPAGE="https://github.com/UniversalRobots/Universal_Robots_ROS2_Description/issues"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/2.0.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/joint_state_publisher_gui
	ros-galactic/launch
	ros-galactic/launch_ros
	ros-galactic/robot_state_publisher
	ros-galactic/rviz2
	ros-galactic/urdf
	ros-galactic/xacro
	test? ( ros-galactic/ament_cmake_pytest )
	test? ( ros-galactic/launch_testing_ament_cmake )
	test? ( ros-galactic/launch_testing_ros )
	test? ( ros-galactic/xacro )
	test? ( dev-libs/urdfdom )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
