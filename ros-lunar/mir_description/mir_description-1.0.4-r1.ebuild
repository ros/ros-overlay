# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="URDF description of the MiR100 robot"
HOMEPAGE="https://github.com/dfki-ric/mir_robot"
SRC_URI="https://github.com/uos-gbp/mir_robot-release/archive/release/lunar/${PN}/1.0.4-1.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/diff_drive_controller
	ros-lunar/gazebo_ros_control
	ros-lunar/joint_state_controller
	ros-lunar/joint_state_publisher
	ros-lunar/position_controllers
	ros-lunar/robot_state_publisher
	ros-lunar/rviz
	ros-lunar/urdf
	ros-lunar/xacro
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/roslaunch
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
