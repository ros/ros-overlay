# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Software for Kobuki, Yujin Robot'"'"'s mobile research base.'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki/0.7.4-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/kobuki_auto_docking
	ros-kinetic/kobuki_bumper2pc
	ros-kinetic/kobuki_capabilities
	ros-kinetic/kobuki_controller_tutorial
	ros-kinetic/kobuki_description
	ros-kinetic/kobuki_keyop
	ros-kinetic/kobuki_node
	ros-kinetic/kobuki_random_walker
	ros-kinetic/kobuki_rapps
	ros-kinetic/kobuki_safety_controller
	ros-kinetic/kobuki_testsuite
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

