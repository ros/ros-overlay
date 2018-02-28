# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Gazebo Plugins for various PR2-specific sensors and actuators on the robot."
HOMEPAGE="http://ros.org/wiki/pr2_gazebo_plugins"
SRC_URI="https://github.com/pr2-gbp/pr2_simulator-release/archive/release/kinetic/${PN}/2.0.9-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/angles
	ros-kinetic/cv_bridge
	ros-kinetic/diagnostic_msgs
	ros-kinetic/diagnostic_updater
	ros-kinetic/gazebo_msgs
	ros-kinetic/gazebo_plugins
	ros-kinetic/gazebo_ros
	ros-kinetic/geometry_msgs
	ros-kinetic/image_transport
	ros-kinetic/message_generation
	ros-kinetic/message_runtime
	ros-kinetic/nav_msgs
	ros-kinetic/orocos_kdl
	ros-kinetic/polled_camera
	ros-kinetic/pr2_controller_manager
	ros-kinetic/pr2_hardware_interface
	ros-kinetic/pr2_mechanism_model
	ros-kinetic/pr2_msgs
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/urdf
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/std_srvs
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
