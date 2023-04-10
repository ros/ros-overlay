# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Gazebo wrapper for the Universal UR5/10 robot arms."
HOMEPAGE="http://ros.org/wiki/ur_gazebo"
SRC_URI="https://github.com/ros-industrial-release/universal_robot-release/archive/release/melodic/${PN}/1.3.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/controller_manager
	ros-melodic/effort_controllers
	ros-melodic/gazebo_ros
	ros-melodic/gazebo_ros_control
	ros-melodic/joint_state_controller
	ros-melodic/joint_trajectory_controller
	ros-melodic/position_controllers
	ros-melodic/robot_state_publisher
	ros-melodic/ur_description
	test? ( ros-melodic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
