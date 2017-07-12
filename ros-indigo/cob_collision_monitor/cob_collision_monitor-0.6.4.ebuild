# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The collision monitor uses the planning scene monitor to read the state of the r"
HOMEPAGE="http://wiki.ros.org/cob_collision_monitor"
SRC_URI="https://github.com/ipa320/cob_manipulation-release/archive/release/indigo/cob_collision_monitor/0.6.4-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_moveit_config
	ros-indigo/moveit_ros_move_group
	ros-indigo/moveit_ros_planning
	ros-indigo/pluginlib
	ros-indigo/std_msgs
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

