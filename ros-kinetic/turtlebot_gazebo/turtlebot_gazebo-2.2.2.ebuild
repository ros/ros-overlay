# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Gazebo launchers and worlds for TurtleBot simulation'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/turtlebot-release/turtlebot_simulator-release/archive/release/kinetic/turtlebot_gazebo/2.2.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/depthimage_to_laserscan
	ros-kinetic/diagnostic_aggregator
	ros-kinetic/gazebo_ros
	ros-kinetic/kobuki_gazebo_plugins
	ros-kinetic/robot_pose_ekf
	ros-kinetic/robot_state_publisher
	ros-kinetic/turtlebot_bringup
	ros-kinetic/turtlebot_description
	ros-kinetic/turtlebot_navigation
	ros-kinetic/xacro
	ros-kinetic/yocs_cmd_vel_mux
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

