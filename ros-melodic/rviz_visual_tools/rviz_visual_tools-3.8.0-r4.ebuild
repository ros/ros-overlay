# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Utility functions for displaying and debugging data in Rviz via published m[...]"
HOMEPAGE="https://github.com/davetcoleman/rviz_visual_tools"
SRC_URI="https://github.com/PickNikRobotics/${PN}-release/archive/release/melodic/${PN}/3.8.0-4.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/eigen_conversions
	ros-melodic/eigen_stl_containers
	ros-melodic/geometry_msgs
	ros-melodic/graph_msgs
	ros-melodic/roscpp
	ros-melodic/roslint
	ros-melodic/rviz
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf_conversions
	ros-melodic/trajectory_msgs
	ros-melodic/visualization_msgs
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rosunit )
	dev-games/ogre
	dev-qt/qtx11extras:5
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
