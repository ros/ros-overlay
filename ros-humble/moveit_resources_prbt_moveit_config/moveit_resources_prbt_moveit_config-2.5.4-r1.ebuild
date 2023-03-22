# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="<p>\
	  MoveIt Resources for testing: Pilz PRBT 6\
	</p>\
	<p>\
\	[...]"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/humble/${PN}/2.5.4-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/joint_state_publisher
	ros-humble/moveit_resources_prbt_ikfast_manipulator_plugin
	ros-humble/moveit_resources_prbt_support
	ros-humble/moveit_ros_move_group
	ros-humble/robot_state_publisher
	ros-humble/rviz2
	ros-humble/xacro
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
