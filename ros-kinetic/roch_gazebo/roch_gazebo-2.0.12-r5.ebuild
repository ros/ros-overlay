# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="SawYer roch Simulator bringup"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SawYerRobotics-release/roch_simulator-release/archive/release/kinetic/roch_gazebo/2.0.12-5.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/controller_manager
	ros-kinetic/gazebo_plugins
	ros-kinetic/gazebo_ros
	ros-kinetic/gazebo_ros_control
	ros-kinetic/hector_gazebo_plugins
	ros-kinetic/map_server
	ros-kinetic/pointcloud_to_laserscan
	ros-kinetic/robot_state_publisher
	ros-kinetic/roch_bringup
	ros-kinetic/roch_control
	ros-kinetic/roch_description
	ros-kinetic/roch_navigation
	ros-kinetic/rostopic
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslaunch
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
