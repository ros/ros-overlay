# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The care-o-bot-simulation meta-package"
HOMEPAGE="https://github.com/ipa320/care-o-bot"
SRC_URI="https://github.com/ipa320/care-o-bot-release/archive/release/noetic/${PN}/0.7.11-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cob_bringup_sim
	ros-noetic/cob_manipulation
	ros-noetic/cob_navigation
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
