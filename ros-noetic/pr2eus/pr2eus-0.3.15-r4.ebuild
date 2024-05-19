# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="pr2eus"
HOMEPAGE="http://ros.org/wiki/pr2eus"
SRC_URI="https://github.com/tork-a/jsk_${PN}-release/archive/release/noetic/${PN}/0.3.15-4.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/control_msgs
	ros-noetic/dynamic_reconfigure
	ros-noetic/euscollada
	ros-noetic/move_base_msgs
	ros-noetic/nav_msgs
	ros-noetic/pr2_controllers_msgs
	ros-noetic/pr2_description
	ros-noetic/pr2_mechanism_msgs
	ros-noetic/pr2_msgs
	ros-noetic/roseus
	ros-noetic/sound_play
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/rosgraph_msgs
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
