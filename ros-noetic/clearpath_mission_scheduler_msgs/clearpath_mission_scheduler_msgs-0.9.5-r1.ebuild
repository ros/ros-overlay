# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The clearpath_mission_scheduler_msgs package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/noetic/${PN}/0.9.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Clearpath Proprietary"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/actionlib_msgs
	ros-noetic/clearpath_mission_manager_msgs
	ros-noetic/clearpath_navigation_msgs
	ros-noetic/message_generation
	ros-noetic/message_runtime
	ros-noetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
