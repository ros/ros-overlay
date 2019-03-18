# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="uuv_simulator contains Gazebo plugins and ROS packages for modeling and sim[...]"
HOMEPAGE="https://uuvsimulator.github.io/"
SRC_URI="https://github.com/uuvsimulator/${PN}-release/archive/release/lunar/${PN}/0.6.10-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/uuv_assistants
	ros-lunar/uuv_auv_control_allocator
	ros-lunar/uuv_control_cascaded_pid
	ros-lunar/uuv_control_msgs
	ros-lunar/uuv_control_utils
	ros-lunar/uuv_descriptions
	ros-lunar/uuv_gazebo
	ros-lunar/uuv_gazebo_plugins
	ros-lunar/uuv_gazebo_ros_plugins
	ros-lunar/uuv_gazebo_ros_plugins_msgs
	ros-lunar/uuv_gazebo_worlds
	ros-lunar/uuv_sensor_ros_plugins
	ros-lunar/uuv_sensor_ros_plugins_msgs
	ros-lunar/uuv_teleop
	ros-lunar/uuv_thruster_manager
	ros-lunar/uuv_trajectory_control
	ros-lunar/uuv_world_plugins
	ros-lunar/uuv_world_ros_plugins
	ros-lunar/uuv_world_ros_plugins_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
