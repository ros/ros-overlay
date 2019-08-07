# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The fetchit_challenge package"
HOMEPAGE="https://opensource.fetchrobotics.com/competition"
SRC_URI="https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/melodic/${PN}/0.9.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/actionlib_msgs
	ros-melodic/controller_manager
	ros-melodic/effort_controllers
	ros-melodic/fetch_gazebo
	ros-melodic/gazebo_ros
	ros-melodic/gazebo_ros_control
	ros-melodic/robot_state_publisher
	ros-melodic/rospy
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
