# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Mechanisms for loading a ros node at runtime.'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/stonier/feed_the_troll-release/archive/release/kinetic/feed_the_troll/0.1.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/feed_the_troll_msgs
	ros-kinetic/rocon_console
	ros-kinetic/rocon_python_utils
	ros-kinetic/rosgraph
	ros-kinetic/rospy
	ros-kinetic/unique_id
	ros-kinetic/uuid_msgs
	dev-python/termcolor
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/rostest
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

