# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Soy roch controller configurations"
HOMEPAGE="http://wiki.ros.org/roch_control"
SRC_URI="https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/indigo/${PN}/1.0.17-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/controller_manager
	ros-indigo/diff_drive_controller
	ros-indigo/geometry_msgs
	ros-indigo/imu_sensor_controller
	ros-indigo/interactive_marker_twist_server
	ros-indigo/joint_state_controller
	ros-indigo/joint_trajectory_controller
	ros-indigo/joy
	ros-indigo/robot_localization
	ros-indigo/roscpp
	ros-indigo/rostopic
	ros-indigo/teleop_twist_joy
	ros-indigo/twist_mux
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslaunch
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
