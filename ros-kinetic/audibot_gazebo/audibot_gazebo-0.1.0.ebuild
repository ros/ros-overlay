# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Gazebo model plugin to simulate Audibot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/robustify/audibot-release/archive/release/kinetic/${PN}/0.1.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/gazebo_ros
	ros-kinetic/gazebo_ros_pkgs
	ros-kinetic/robot_state_publisher
	ros-kinetic/roscpp
	ros-kinetic/rviz
	ros-kinetic/tf
	test? ( ros-kinetic/rospy )
	test? ( ros-kinetic/rostest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
