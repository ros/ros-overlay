# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Gazebo configurations package for OpenManipulator"
HOMEPAGE="http://wiki.ros.org/open_manipulator_gazebo"
SRC_URI="https://github.com/ROBOTIS-GIT-release/open_manipulator_simulations-release/archive/release/noetic/${PN}/1.1.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/controller_manager
	ros-noetic/gazebo_ros
	ros-noetic/gazebo_ros_control
	ros-noetic/roscpp
	ros-noetic/std_msgs
	ros-noetic/urdf
	ros-noetic/xacro
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
