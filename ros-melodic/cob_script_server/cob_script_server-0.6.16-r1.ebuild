# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The cob_script_server package provides a simple interface to operate Care-O[...]"
HOMEPAGE="http://ros.org/wiki/cob_script_server"
SRC_URI="https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/${PN}/0.6.16-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/actionlib_msgs
	ros-melodic/cob_actions
	ros-melodic/cob_light
	ros-melodic/cob_mimic
	ros-melodic/cob_sound
	ros-melodic/control_msgs
	ros-melodic/geometry_msgs
	ros-melodic/message_runtime
	ros-melodic/move_base_msgs
	ros-melodic/rospy
	ros-melodic/rostest
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/tf
	ros-melodic/trajectory_msgs
	ros-melodic/urdfdom_py
	dev-python/ipython
	dev-python/pygraphviz
	dev-python/six
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
