# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="elevator_move_base_pr2"
HOMEPAGE="http://ros.org/wiki/elevator_move_base_pr2"
SRC_URI="https://github.com/tork-a/jsk_demos-release/archive/release/indigo/elevator_move_base_pr2/0.0.4-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/message_runtime
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cv_bridge
	ros-indigo/image_geometry
	ros-indigo/image_transport
	ros-indigo/jsk_maps
	ros-indigo/jsk_perception
	ros-indigo/message_generation
	ros-indigo/move_base_msgs
	ros-indigo/nav_msgs
	ros-indigo/pr2eus
	ros-indigo/roscpp
	ros-indigo/roseus
	ros-indigo/roseus_smach
	ros-indigo/rospy
	ros-indigo/sound_play
	ros-indigo/std_msgs
	ros-indigo/std_srvs
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
