# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="<p>\
	  MoveIt Resources for testing: Pilz PRBT 6\
	</p>\
	<p>\
\	[...]"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/moveit/moveit2-release/archive/release/galactic/${PN}/2.3.4-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/joint_state_publisher
	ros-galactic/moveit_resources_prbt_ikfast_manipulator_plugin
	ros-galactic/moveit_resources_prbt_support
	ros-galactic/moveit_ros_move_group
	ros-galactic/robot_state_publisher
	ros-galactic/rviz2
	ros-galactic/xacro
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
