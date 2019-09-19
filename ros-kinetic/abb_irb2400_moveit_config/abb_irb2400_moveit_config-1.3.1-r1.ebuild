# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>\
	  MoveIt package for the ABB IRB 2400.\
	</p>\
	<p>\
	  A[...]"
HOMEPAGE="http://ros.org/wiki/abb_irb2400_moveit_config"
SRC_URI="https://github.com/ros-industrial-release/abb-release/archive/release/kinetic/${PN}/1.3.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/abb_irb2400_moveit_plugins
	ros-kinetic/abb_irb2400_support
	ros-kinetic/industrial_robot_simulator
	ros-kinetic/joint_state_publisher
	ros-kinetic/moveit_planners_ompl
	ros-kinetic/moveit_ros_move_group
	ros-kinetic/moveit_ros_visualization
	ros-kinetic/moveit_simple_controller_manager
	ros-kinetic/robot_state_publisher
	ros-kinetic/xacro
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
