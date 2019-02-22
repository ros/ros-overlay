# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="pr2eus"
HOMEPAGE="http://ros.org/wiki/pr2eus"
SRC_URI="https://github.com/tork-a/jsk_${PN}-release/archive/release/indigo/${PN}/0.3.14-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/control_msgs
	ros-indigo/dynamic_reconfigure
	ros-indigo/euscollada
	ros-indigo/move_base_msgs
	ros-indigo/nav_msgs
	ros-indigo/pr2_controllers_msgs
	ros-indigo/pr2_description
	ros-indigo/pr2_mechanism_msgs
	ros-indigo/pr2_msgs
	ros-indigo/roseus
	ros-indigo/sound_play
	test? ( ros-indigo/pr2_gazebo )
	test? ( ros-indigo/robot_state_publisher )
	test? ( ros-indigo/rostest )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rosgraph_msgs
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
