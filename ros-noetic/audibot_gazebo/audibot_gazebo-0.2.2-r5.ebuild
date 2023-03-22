# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Gazebo model plugin to simulate Audibot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/robustify/audibot-release/archive/release/noetic/${PN}/0.2.2-5.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/audibot_description
	ros-noetic/gazebo_ros
	ros-noetic/gazebo_ros_pkgs
	ros-noetic/nav_msgs
	ros-noetic/robot_state_publisher
	ros-noetic/roscpp
	ros-noetic/rviz
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_ros
	test? ( ros-noetic/rospy )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
