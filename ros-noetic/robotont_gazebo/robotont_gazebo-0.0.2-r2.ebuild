# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The robotont_gazebo package"
HOMEPAGE="https://wiki.ros.org/robotont"
SRC_URI="https://github.com/robotont-release/${PN}-release/archive/release/noetic/${PN}/0.0.2-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/gazebo_ros
	ros-noetic/gazebo_ros_pkgs
	ros-noetic/joy
	ros-noetic/nav_msgs
	ros-noetic/robotont_description
	ros-noetic/robotont_nuc_description
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/std_msgs
	ros-noetic/tf
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
