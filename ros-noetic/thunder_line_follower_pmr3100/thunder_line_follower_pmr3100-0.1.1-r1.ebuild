# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="<p>Simulation environment for a line follower development</p>\
	<p>Creat[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ThundeRatz/${PN}-release/archive/release/noetic/${PN}/0.1.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/controller_manager
	ros-noetic/gazebo_plugins
	ros-noetic/gazebo_ros
	ros-noetic/geometry_msgs
	ros-noetic/joint_state_publisher
	ros-noetic/robot_state_publisher
	ros-noetic/roscpp
	ros-noetic/roslaunch
	ros-noetic/rospy
	ros-noetic/velocity_controllers
	ros-noetic/xacro
	sci-electronics/gazebo
	dev-python/pygame
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
