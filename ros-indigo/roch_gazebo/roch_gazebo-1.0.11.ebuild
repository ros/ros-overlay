# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'SawYer roch Simulator bringup'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SawYerRobotics-release/roch_simulator-release/archive/release/indigo/roch_gazebo/1.0.11-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/controller_manager
	ros-indigo/gazebo_plugins
	ros-indigo/gazebo_ros
	ros-indigo/gazebo_ros_control
	ros-indigo/hector_gazebo_plugins
	ros-indigo/pointcloud_to_laserscan
	ros-indigo/robot_state_publisher
	ros-indigo/roch_bringup
	ros-indigo/roch_control
	ros-indigo/roch_description
	ros-indigo/roch_navigation
	ros-indigo/rostopic
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslaunch
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

