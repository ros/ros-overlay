# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="uuv_simulator contains Gazebo plugins and ROS packages for modeling and sim[...]"
HOMEPAGE="https://uuvsimulator.github.io/"
SRC_URI="https://github.com/uuvsimulator/${PN}-release/archive/release/melodic/${PN}/0.6.13-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/uuv_assistants
	ros-melodic/uuv_auv_control_allocator
	ros-melodic/uuv_control_cascaded_pid
	ros-melodic/uuv_control_msgs
	ros-melodic/uuv_control_utils
	ros-melodic/uuv_descriptions
	ros-melodic/uuv_gazebo
	ros-melodic/uuv_gazebo_plugins
	ros-melodic/uuv_gazebo_ros_plugins
	ros-melodic/uuv_gazebo_ros_plugins_msgs
	ros-melodic/uuv_gazebo_worlds
	ros-melodic/uuv_sensor_ros_plugins
	ros-melodic/uuv_sensor_ros_plugins_msgs
	ros-melodic/uuv_teleop
	ros-melodic/uuv_thruster_manager
	ros-melodic/uuv_trajectory_control
	ros-melodic/uuv_world_plugins
	ros-melodic/uuv_world_ros_plugins
	ros-melodic/uuv_world_ros_plugins_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
