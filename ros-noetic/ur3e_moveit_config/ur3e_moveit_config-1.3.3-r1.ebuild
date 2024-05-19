# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="An automatically generated package with all the configuration and launch fi[...]"
HOMEPAGE="http://moveit.ros.org/"
SRC_URI="https://github.com/ros-industrial-release/universal_robot-release/archive/release/noetic/${PN}/1.3.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/joint_state_publisher
	ros-noetic/joint_state_publisher_gui
	ros-noetic/moveit_fake_controller_manager
	ros-noetic/moveit_planners_ompl
	ros-noetic/moveit_ros_benchmarks
	ros-noetic/moveit_ros_move_group
	ros-noetic/moveit_ros_visualization
	ros-noetic/moveit_ros_warehouse
	ros-noetic/moveit_setup_assistant
	ros-noetic/moveit_simple_controller_manager
	ros-noetic/robot_state_publisher
	ros-noetic/rviz
	ros-noetic/tf2_ros
	ros-noetic/trac_ik_kinematics_plugin
	ros-noetic/ur_description
	ros-noetic/warehouse_ros_mongo
	ros-noetic/xacro
	test? ( ros-noetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
