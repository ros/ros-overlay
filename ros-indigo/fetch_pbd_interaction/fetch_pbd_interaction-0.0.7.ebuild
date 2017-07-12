# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The fetch_pbd_interaction package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/fetchrobotics/fetch_pbd-release/archive/release/indigo/fetch_pbd_interaction/0.0.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/fetch_arm_control
	ros-indigo/geometry_msgs
	ros-indigo/interactive_marker_proxy
	ros-indigo/interactive_markers
	ros-indigo/message_runtime
	ros-indigo/moveit_commander
	ros-indigo/rail_manipulation_msgs
	ros-indigo/rail_segmentation
	ros-indigo/rosbridge_server
	ros-indigo/rospy
	ros-indigo/rospy_message_converter
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/tf2_web_republisher
	dev-db/couchdb
	dev-python/couchdb-python
"
DEPEND="${RDEPEND}
	ros-indigo/actionlib
	ros-indigo/catkin
	ros-indigo/message_generation
	ros-indigo/roscpp
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

