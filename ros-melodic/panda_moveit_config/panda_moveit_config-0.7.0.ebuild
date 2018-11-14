# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="An automatically generated package with all the configuration and launch fi[...]"
HOMEPAGE="http://moveit.ros.org/"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.7.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/franka_description
	ros-melodic/joint_state_publisher
	ros-melodic/moveit_fake_controller_manager
	ros-melodic/moveit_kinematics
	ros-melodic/moveit_planners_ompl
	ros-melodic/moveit_ros_move_group
	ros-melodic/moveit_ros_visualization
	ros-melodic/robot_state_publisher
	ros-melodic/topic_tools
	ros-melodic/xacro
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
