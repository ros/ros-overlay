# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Plays a pre-recorded motion on a robot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pal-gbp/${PN}-release2/archive/release/kinetic/${PN}/0.4.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/control_msgs
	ros-kinetic/controller_manager_msgs
	ros-kinetic/diagnostic_msgs
	ros-kinetic/diagnostic_updater
	ros-kinetic/moveit_ros_planning_interface
	ros-kinetic/play_motion_msgs
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	test? ( ros-kinetic/controller_manager )
	test? ( ros-kinetic/hardware_interface )
	test? ( ros-kinetic/joint_state_controller )
	test? ( ros-kinetic/joint_trajectory_controller )
	test? ( ros-kinetic/position_controllers )
	test? ( ros-kinetic/robot_state_publisher )
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/xacro )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
