# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="COB teleop interactive marker for RViz provided by dcgm-robotics@FIT group."
HOMEPAGE="http://ros.org/wiki/cob_interactive_teleop"
SRC_URI="https://github.com/ipa320/cob_command_tools-release/archive/release/indigo/${PN}/0.6.9-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/interactive_markers
	ros-indigo/roscpp
	ros-indigo/rviz
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
