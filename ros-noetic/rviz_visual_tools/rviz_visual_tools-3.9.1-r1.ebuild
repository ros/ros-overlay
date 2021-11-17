# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Utility functions for displaying and debugging data in Rviz via published m[...]"
HOMEPAGE="https://github.com/davetcoleman/rviz_visual_tools"
SRC_URI="https://github.com/PickNikRobotics/${PN}-release/archive/release/noetic/${PN}/3.9.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/eigen_stl_containers
	ros-noetic/geometry_msgs
	ros-noetic/graph_msgs
	ros-noetic/interactive_markers
	ros-noetic/roscpp
	ros-noetic/roslint
	ros-noetic/rviz
	ros-noetic/sensor_msgs
	ros-noetic/shape_msgs
	ros-noetic/std_msgs
	ros-noetic/tf2_eigen
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_ros
	ros-noetic/trajectory_msgs
	ros-noetic/visualization_msgs
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rosunit )
	dev-games/ogre
	dev-qt/qtx11extras:5
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
