# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="pr2eus"
HOMEPAGE="http://ros.org/wiki/pr2eus"
SRC_URI="https://github.com/tork-a/jsk_${PN}-release/archive/release/kinetic/${PN}/0.3.14-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/control_msgs
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/euscollada
	ros-kinetic/move_base_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/pr2_controllers_msgs
	ros-kinetic/pr2_description
	ros-kinetic/pr2_mechanism_msgs
	ros-kinetic/pr2_msgs
	ros-kinetic/roseus
	ros-kinetic/sound_play
	test? ( ros-kinetic/pr2_gazebo )
	test? ( ros-kinetic/robot_state_publisher )
	test? ( ros-kinetic/rostest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/rosgraph_msgs
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
