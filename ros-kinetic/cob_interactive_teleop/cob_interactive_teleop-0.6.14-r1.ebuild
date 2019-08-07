# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="COB teleop interactive marker for RViz provided by dcgm-robotics@FIT group."
HOMEPAGE="http://ros.org/wiki/cob_interactive_teleop"
SRC_URI="https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/${PN}/0.6.14-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/interactive_markers
	ros-kinetic/roscpp
	ros-kinetic/rviz
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
