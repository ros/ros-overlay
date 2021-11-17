# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="COB teleop interactive marker for RViz provided by dcgm-robotics@FIT group."
HOMEPAGE="http://ros.org/wiki/cob_interactive_teleop"
SRC_URI="https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/${PN}/0.6.21-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/interactive_markers
	ros-noetic/roscpp
	ros-noetic/rviz
	ros-noetic/std_msgs
	ros-noetic/tf
	ros-noetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
