# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>\
	  MoveIt kinematics plugin for industrial robots.\
	</p>\
	<[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/JeroenDM/${PN}-release/archive/release/kinetic/${PN}/0.1.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/moveit_core
	ros-kinetic/moveit_ros_planning
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	test? ( ros-kinetic/moveit_resources )
	test? ( ros-kinetic/rostest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/eigen_conversions
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
