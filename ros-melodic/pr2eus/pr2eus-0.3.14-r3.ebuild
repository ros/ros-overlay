# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="pr2eus"
HOMEPAGE="http://ros.org/wiki/pr2eus"
SRC_URI="https://github.com/tork-a/jsk_${PN}-release/archive/release/melodic/${PN}/0.3.14-3.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/control_msgs
	ros-melodic/dynamic_reconfigure
	ros-melodic/euscollada
	ros-melodic/move_base_msgs
	ros-melodic/nav_msgs
	ros-melodic/pr2_controllers_msgs
	ros-melodic/pr2_description
	ros-melodic/pr2_mechanism_msgs
	ros-melodic/pr2_msgs
	ros-melodic/roseus
	ros-melodic/sound_play
	test? ( ros-melodic/pr2_gazebo )
	test? ( ros-melodic/robot_state_publisher )
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/rosgraph_msgs
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
