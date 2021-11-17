# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="An automatically generated package with all the configuration and launch fi[...]"
HOMEPAGE="http://moveit.ros.org/"
SRC_URI="https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/noetic/${PN}/0.9.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/fetch_description
	ros-noetic/fetch_ikfast_plugin
	ros-noetic/joint_state_publisher
	ros-noetic/moveit_fake_controller_manager
	ros-noetic/moveit_kinematics
	ros-noetic/moveit_planners_ompl
	ros-noetic/moveit_python
	ros-noetic/moveit_ros_move_group
	ros-noetic/moveit_ros_visualization
	ros-noetic/moveit_simple_controller_manager
	ros-noetic/robot_state_publisher
	ros-noetic/rospy
	ros-noetic/xacro
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
