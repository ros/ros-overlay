# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Package containing Mia Hand URDF model. Includes Gazebo tags that allow\
  [...]"
HOMEPAGE="https://wiki.ros.org/mia_hand_ros_pkgs"
SRC_URI="https://github.com/Prensilia-srl/mia_hand_ros_pkgs-release/archive/release/noetic/${PN}/1.0.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/joint_limits_interface
	ros-noetic/joint_state_publisher
	ros-noetic/joint_state_publisher_gui
	ros-noetic/robot_state_publisher
	ros-noetic/roscpp
	ros-noetic/rostime
	ros-noetic/rviz
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/urdf
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
