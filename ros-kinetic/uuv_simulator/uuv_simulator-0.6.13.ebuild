# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="uuv_simulator contains Gazebo plugins and ROS packages for modeling and sim[...]"
HOMEPAGE="https://uuvsimulator.github.io/"
SRC_URI="https://github.com/uuvsimulator/${PN}-release/archive/release/kinetic/${PN}/0.6.13-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/uuv_assistants
	ros-kinetic/uuv_auv_control_allocator
	ros-kinetic/uuv_control_cascaded_pid
	ros-kinetic/uuv_control_msgs
	ros-kinetic/uuv_control_utils
	ros-kinetic/uuv_descriptions
	ros-kinetic/uuv_gazebo
	ros-kinetic/uuv_gazebo_plugins
	ros-kinetic/uuv_gazebo_ros_plugins
	ros-kinetic/uuv_gazebo_ros_plugins_msgs
	ros-kinetic/uuv_gazebo_worlds
	ros-kinetic/uuv_sensor_ros_plugins
	ros-kinetic/uuv_sensor_ros_plugins_msgs
	ros-kinetic/uuv_teleop
	ros-kinetic/uuv_thruster_manager
	ros-kinetic/uuv_trajectory_control
	ros-kinetic/uuv_world_plugins
	ros-kinetic/uuv_world_ros_plugins
	ros-kinetic/uuv_world_ros_plugins_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
