# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="An automatically generated package with all the configuration and launch fi[...]"
HOMEPAGE="http://moveit.ros.org/"
SRC_URI="https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/${PN}/0.8.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/fetch_description
	ros-melodic/fetch_ikfast_plugin
	ros-melodic/joint_state_publisher
	ros-melodic/moveit_fake_controller_manager
	ros-melodic/moveit_kinematics
	ros-melodic/moveit_planners_ompl
	ros-melodic/moveit_python
	ros-melodic/moveit_ros_move_group
	ros-melodic/moveit_ros_visualization
	ros-melodic/moveit_simple_controller_manager
	ros-melodic/robot_state_publisher
	ros-melodic/rospy
	ros-melodic/xacro
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
