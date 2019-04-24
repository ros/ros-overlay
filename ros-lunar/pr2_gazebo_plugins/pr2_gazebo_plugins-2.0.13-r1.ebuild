# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Gazebo Plugins for various PR2-specific sensors and actuators on the robot."
HOMEPAGE="http://ros.org/wiki/pr2_gazebo_plugins"
SRC_URI="https://github.com/pr2-gbp/pr2_simulator-release/archive/release/lunar/${PN}/2.0.13-1.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/angles
	ros-lunar/cv_bridge
	ros-lunar/diagnostic_msgs
	ros-lunar/diagnostic_updater
	ros-lunar/gazebo_msgs
	ros-lunar/gazebo_plugins
	ros-lunar/gazebo_ros
	ros-lunar/geometry_msgs
	ros-lunar/image_transport
	ros-lunar/message_generation
	ros-lunar/message_runtime
	ros-lunar/nav_msgs
	ros-lunar/orocos_kdl
	ros-lunar/polled_camera
	ros-lunar/pr2_controller_manager
	ros-lunar/pr2_hardware_interface
	ros-lunar/pr2_mechanism_model
	ros-lunar/pr2_msgs
	ros-lunar/roscpp
	ros-lunar/rospy
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/tf
	ros-lunar/urdf
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/std_srvs
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
