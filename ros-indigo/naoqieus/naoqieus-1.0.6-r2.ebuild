# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The naoqieus package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_robot-release/archive/release/indigo/naoqieus/1.0.6-2.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_aggregator
	ros-indigo/nao_interaction_msgs
	ros-indigo/naoqi_driver
	ros-indigo/pr2eus
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/euscollada
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

