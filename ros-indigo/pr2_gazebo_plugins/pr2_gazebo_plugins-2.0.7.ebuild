# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Gazebo Plugins for various PR2specific sensors and actuators on the robot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pr2-gbp/pr2_simulator-release/archive/release/indigo/pr2_gazebo_plugins/2.0.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/angles
	ros-indigo/cv_bridge
	ros-indigo/diagnostic_msgs
	ros-indigo/diagnostic_updater
	ros-indigo/driver_base
	ros-indigo/gazebo_msgs
	ros-indigo/gazebo_plugins
	ros-indigo/gazebo_ros
	ros-indigo/geometry_msgs
	ros-indigo/image_transport
	ros-indigo/message_generation
	ros-indigo/message_runtime
	ros-indigo/nav_msgs
	ros-indigo/orocos_kdl
	ros-indigo/polled_camera
	ros-indigo/pr2_controller_manager
	ros-indigo/pr2_hardware_interface
	ros-indigo/pr2_mechanism_model
	ros-indigo/pr2_msgs
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/urdf
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/std_srvs
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

