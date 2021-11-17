# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="<p>\
	  MoveIt kinematics plugin for industrial robots.\
	</p>\
	<[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/JeroenDM/${PN}-release/archive/release/noetic/${PN}/0.3.1-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/moveit_core
	ros-noetic/pluginlib
	ros-noetic/roscpp
	test? ( ros-noetic/moveit_resources_fanuc_moveit_config )
	test? ( ros-noetic/moveit_ros_planning )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/eigen_conversions
	ros-noetic/opw_kinematics
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
