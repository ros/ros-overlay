# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="An automatically generated package with all the configuration and launch fi[...]"
HOMEPAGE="http://wiki.ros.org/open_manipulator_with_tb3_waffle_moveit"
SRC_URI="https://github.com/ROBOTIS-GIT-release/open_manipulator_with_tb3-release/archive/release/melodic/${PN}/1.1.0-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/joint_state_publisher
	ros-melodic/moveit_fake_controller_manager
	ros-melodic/moveit_kinematics
	ros-melodic/moveit_planners_ompl
	ros-melodic/moveit_ros_move_group
	ros-melodic/moveit_ros_visualization
	ros-melodic/moveit_setup_assistant
	ros-melodic/open_manipulator_with_tb3_description
	ros-melodic/robot_state_publisher
	ros-melodic/xacro
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
