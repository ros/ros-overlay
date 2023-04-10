# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Plays a pre-recorded motion on a robot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pal-gbp/${PN}-release2/archive/release/melodic/${PN}/0.4.8-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/control_msgs
	ros-melodic/controller_manager_msgs
	ros-melodic/diagnostic_msgs
	ros-melodic/diagnostic_updater
	ros-melodic/moveit_ros_planning_interface
	ros-melodic/play_motion_msgs
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	test? ( ros-melodic/controller_manager )
	test? ( ros-melodic/hardware_interface )
	test? ( ros-melodic/joint_state_controller )
	test? ( ros-melodic/joint_trajectory_controller )
	test? ( ros-melodic/position_controllers )
	test? ( ros-melodic/robot_state_publisher )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/xacro )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
