# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Gazebo launchers and worlds for TurtleBot simulation"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/turtlebot-release/turtlebot_simulator-release/archive/release/indigo/turtlebot_gazebo/2.2.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/depthimage_to_laserscan
	ros-indigo/diagnostic_aggregator
	ros-indigo/gazebo_ros
	ros-indigo/kobuki_gazebo_plugins
	ros-indigo/robot_pose_ekf
	ros-indigo/robot_state_publisher
	ros-indigo/turtlebot_bringup
	ros-indigo/turtlebot_description
	ros-indigo/turtlebot_navigation
	ros-indigo/xacro
	ros-indigo/yocs_cmd_vel_mux
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
