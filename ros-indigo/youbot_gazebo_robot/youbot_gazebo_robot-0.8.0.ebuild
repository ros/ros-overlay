# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Launch the KUKA youBot in the Gazebo simulation"
HOMEPAGE="http://github.com/mas-group/youbot_simulation"
SRC_URI="https://github.com/youbot-release/youbot_simulation-release/archive/release/indigo/youbot_gazebo_robot/0.8.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/gazebo_ros
	ros-indigo/robot_state_publisher
	ros-indigo/xacro
	ros-indigo/youbot_description
	ros-indigo/youbot_gazebo_control
	ros-indigo/youbot_gazebo_worlds
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
