# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Metapackage for Clearapth messages."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/${PN}-release/archive/release/noetic/${PN}/0.9.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/clearpath_configuration_msgs
	ros-noetic/clearpath_control_msgs
	ros-noetic/clearpath_dock_msgs
	ros-noetic/clearpath_localization_msgs
	ros-noetic/clearpath_mission_manager_msgs
	ros-noetic/clearpath_mission_scheduler_msgs
	ros-noetic/clearpath_navigation_msgs
	ros-noetic/clearpath_platform_msgs
	ros-noetic/clearpath_safety_msgs
	ros-noetic/dingo_msgs
	ros-noetic/husky_msgs
	ros-noetic/jackal_msgs
	ros-noetic/ridgeback_msgs
	ros-noetic/warthog_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
