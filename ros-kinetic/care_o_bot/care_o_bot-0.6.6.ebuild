# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The care-o-bot meta-package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/care-o-bot-release/archive/release/kinetic/${PN}/0.6.6-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/care_o_bot_robot
	ros-kinetic/care_o_bot_simulation
	ros-kinetic/cob_manipulation
	ros-kinetic/cob_navigation
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
