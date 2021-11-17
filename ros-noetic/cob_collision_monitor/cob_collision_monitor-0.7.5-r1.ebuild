# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The collision monitor uses the planning scene monitor to read the state of [...]"
HOMEPAGE="http://wiki.ros.org/cob_collision_monitor"
SRC_URI="https://github.com/ipa320/cob_manipulation-release/archive/release/noetic/${PN}/0.7.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cob_moveit_config
	ros-noetic/moveit_ros_move_group
	ros-noetic/moveit_ros_planning
	ros-noetic/pluginlib
	ros-noetic/std_msgs
	ros-noetic/tf
	ros-noetic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
