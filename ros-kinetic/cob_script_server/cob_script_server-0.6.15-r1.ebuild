# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The cob_script_server package provides a simple interface to operate Care-O[...]"
HOMEPAGE="http://ros.org/wiki/cob_script_server"
SRC_URI="https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/${PN}/0.6.15-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/cob_actions
	ros-kinetic/cob_light
	ros-kinetic/cob_mimic
	ros-kinetic/cob_sound
	ros-kinetic/control_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/message_runtime
	ros-kinetic/move_base_msgs
	ros-kinetic/rospy
	ros-kinetic/rostest
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	ros-kinetic/tf
	ros-kinetic/trajectory_msgs
	ros-kinetic/urdfdom_py
	dev-python/ipython
	dev-python/pygraphviz
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
