# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The collision monitor uses the planning scene monitor to read the state of [...]"
HOMEPAGE="http://wiki.ros.org/cob_collision_monitor"
SRC_URI="https://github.com/ipa320/cob_manipulation-release/archive/release/melodic/${PN}/0.7.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cob_moveit_config
	ros-melodic/moveit_ros_move_group
	ros-melodic/moveit_ros_planning
	ros-melodic/pluginlib
	ros-melodic/std_msgs
	ros-melodic/tf
	ros-melodic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
