# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="URDF description for Universal Robots"
HOMEPAGE="https://github.com/UniversalRobots/Universal_Robots_ROS2_Description/issues"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/2.0.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/joint_state_publisher_gui
	ros-humble/launch
	ros-humble/launch_ros
	ros-humble/robot_state_publisher
	ros-humble/rviz2
	ros-humble/urdf
	ros-humble/xacro
	test? ( ros-humble/ament_cmake_pytest )
	test? ( ros-humble/launch_testing_ament_cmake )
	test? ( ros-humble/launch_testing_ros )
	test? ( ros-humble/xacro )
	test? ( dev-libs/urdfdom )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
