# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Software for Kobuki, Yujin Robot\'s mobile research base."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/kobuki-release/archive/release/indigo/kobuki/0.6.8-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/kobuki_auto_docking
	ros-indigo/kobuki_bumper2pc
	ros-indigo/kobuki_capabilities
	ros-indigo/kobuki_controller_tutorial
	ros-indigo/kobuki_description
	ros-indigo/kobuki_keyop
	ros-indigo/kobuki_node
	ros-indigo/kobuki_random_walker
	ros-indigo/kobuki_rapps
	ros-indigo/kobuki_safety_controller
	ros-indigo/kobuki_testsuite
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
