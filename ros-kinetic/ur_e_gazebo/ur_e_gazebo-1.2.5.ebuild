# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Gazebo wrapper for the Universal UR5/10 robot arms."
HOMEPAGE="http://ros.org/wiki/ur_e_gazebo"
SRC_URI="https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/${PN}/1.2.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/controller_manager
	ros-kinetic/effort_controllers
	ros-kinetic/gazebo_ros
	ros-kinetic/gazebo_ros_control
	ros-kinetic/joint_state_controller
	ros-kinetic/joint_trajectory_controller
	ros-kinetic/robot_state_publisher
	ros-kinetic/rostopic
	ros-kinetic/ur_e_description
	test? ( ros-kinetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
