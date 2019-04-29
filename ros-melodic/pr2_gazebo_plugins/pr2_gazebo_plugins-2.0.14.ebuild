# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Gazebo Plugins for various PR2-specific sensors and actuators on the robot."
HOMEPAGE="http://ros.org/wiki/pr2_gazebo_plugins"
SRC_URI="https://github.com/pr2-gbp/pr2_simulator-release/archive/release/melodic/${PN}/2.0.14-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/angles
	ros-melodic/cv_bridge
	ros-melodic/diagnostic_msgs
	ros-melodic/diagnostic_updater
	ros-melodic/gazebo_msgs
	ros-melodic/gazebo_plugins
	ros-melodic/gazebo_ros
	ros-melodic/geometry_msgs
	ros-melodic/image_transport
	ros-melodic/message_generation
	ros-melodic/message_runtime
	ros-melodic/nav_msgs
	ros-melodic/orocos_kdl
	ros-melodic/polled_camera
	ros-melodic/pr2_controller_manager
	ros-melodic/pr2_hardware_interface
	ros-melodic/pr2_mechanism_model
	ros-melodic/pr2_msgs
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
	ros-melodic/urdf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/std_srvs
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
