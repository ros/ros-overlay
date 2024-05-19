# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="ROS1 driver for the Schunk SVH five finger hand"
HOMEPAGE="http://www.ros.org/wiki/schunk_svh_driver"
SRC_URI="https://github.com/SCHUNK-GmbH-Co-KG/schunk_svh_ros_driver-release/archive/release/noetic/${PN}/0.1.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/combined_robot_hw
	ros-noetic/controller_manager
	ros-noetic/dynamic_reconfigure
	ros-noetic/hardware_interface
	ros-noetic/joint_limits_interface
	ros-noetic/joint_state_controller
	ros-noetic/joint_state_publisher
	ros-noetic/joint_trajectory_controller
	ros-noetic/pluginlib
	ros-noetic/python_qt_binding
	ros-noetic/qt_gui
	ros-noetic/robot_state_publisher
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/rqt_gui
	ros-noetic/rqt_gui_py
	ros-noetic/schunk_svh_description
	ros-noetic/schunk_svh_library
	ros-noetic/schunk_svh_msgs
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/urdf
	ros-noetic/xacro
	dev-python/rospkg
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
