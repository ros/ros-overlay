# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="An automatically generated package with all the configuration and launch fi[...]"
HOMEPAGE="http://ros.org/wiki/fetch_moveit_config"
SRC_URI="https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/indigo/${PN}/0.7.15-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/fetch_description
	ros-indigo/fetch_ikfast_plugin
	ros-indigo/joint_state_publisher
	ros-indigo/moveit_fake_controller_manager
	ros-indigo/moveit_kinematics
	ros-indigo/moveit_planners_ompl
	ros-indigo/moveit_python
	ros-indigo/moveit_ros_move_group
	ros-indigo/moveit_ros_visualization
	ros-indigo/moveit_simple_controller_manager
	ros-indigo/robot_state_publisher
	ros-indigo/rospy
	ros-indigo/xacro
	test? ( ros-indigo/rostest )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
