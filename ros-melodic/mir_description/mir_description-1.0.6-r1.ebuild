# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="URDF description of the MiR100 robot"
HOMEPAGE="https://github.com/dfki-ric/mir_robot"
SRC_URI="https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/${PN}/1.0.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diff_drive_controller
	ros-melodic/gazebo_ros_control
	ros-melodic/joint_state_controller
	ros-melodic/joint_state_publisher
	ros-melodic/position_controllers
	ros-melodic/robot_state_publisher
	ros-melodic/rviz
	ros-melodic/urdf
	ros-melodic/xacro
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslaunch
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
