# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Gazebo wrapper for the Universal UR5/10 robot arms."
HOMEPAGE="http://ros.org/wiki/ur_gazebo"
SRC_URI="https://github.com/ros-industrial-release/universal_robot-release/archive/release/noetic/${PN}/1.3.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/controller_manager
	ros-noetic/effort_controllers
	ros-noetic/gazebo_ros
	ros-noetic/gazebo_ros_control
	ros-noetic/joint_state_controller
	ros-noetic/joint_trajectory_controller
	ros-noetic/position_controllers
	ros-noetic/robot_state_publisher
	ros-noetic/ur_description
	test? ( ros-noetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
