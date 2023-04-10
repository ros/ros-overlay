# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Gazebo Plugins for various PR2-specific sensors and actuators on the robot."
HOMEPAGE="http://ros.org/wiki/pr2_gazebo_plugins"
SRC_URI="https://github.com/pr2-gbp/pr2_simulator-release/archive/release/noetic/${PN}/2.1.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/angles
	ros-noetic/cv_bridge
	ros-noetic/diagnostic_msgs
	ros-noetic/diagnostic_updater
	ros-noetic/gazebo_msgs
	ros-noetic/gazebo_plugins
	ros-noetic/gazebo_ros
	ros-noetic/geometry_msgs
	ros-noetic/image_transport
	ros-noetic/message_generation
	ros-noetic/message_runtime
	ros-noetic/nav_msgs
	ros-noetic/polled_camera
	ros-noetic/pr2_controller_manager
	ros-noetic/pr2_hardware_interface
	ros-noetic/pr2_mechanism_model
	ros-noetic/pr2_msgs
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf
	ros-noetic/urdf
	sci-libs/orocos_kdl
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/std_srvs
	sci-libs/orocos_kdl
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
