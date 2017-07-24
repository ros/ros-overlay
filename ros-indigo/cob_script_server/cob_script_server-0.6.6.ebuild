# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The cob_script_server package provides a simple interface to operate Care-O-bot."
HOMEPAGE="http://ros.org/wiki/cob_script_server"
SRC_URI="https://github.com/ipa320/cob_command_tools-release/archive/release/indigo/cob_script_server/0.6.6-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/cob_light
	ros-indigo/cob_mimic
	ros-indigo/cob_sound
	ros-indigo/control_msgs
	ros-indigo/geometry_msgs
	ros-indigo/message_runtime
	ros-indigo/move_base_msgs
	ros-indigo/rospy
	ros-indigo/rostest
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/tf
	ros-indigo/trajectory_msgs
	dev-python/ipython
	dev-python/pygraphviz
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

