# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The careobotrobot metapackage"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/care-o-bot-release/archive/release/indigo/care_o_bot_robot/0.6.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_bringup
	ros-indigo/cob_manipulation
	ros-indigo/cob_navigation
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

