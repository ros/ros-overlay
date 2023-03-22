# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="An automatically generated package with all the configuration and launch fi[...]"
HOMEPAGE="http://moveit.ros.org/"
SRC_URI="https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/noetic/${PN}/1.3.0-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/joint_state_publisher
	ros-noetic/khi_duaro_description
	ros-noetic/khi_duaro_ikfast_plugin
	ros-noetic/moveit_fake_controller_manager
	ros-noetic/moveit_kinematics
	ros-noetic/moveit_planners_ompl
	ros-noetic/moveit_ros_move_group
	ros-noetic/moveit_ros_visualization
	ros-noetic/moveit_simple_controller_manager
	ros-noetic/robot_state_publisher
	ros-noetic/rviz
	ros-noetic/tf
	ros-noetic/xacro
	test? ( ros-noetic/roslaunch )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
