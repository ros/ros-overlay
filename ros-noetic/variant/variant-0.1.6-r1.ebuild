# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Meta-package for the universal variant library."
HOMEPAGE="http://github.com/anybotics/variant"
SRC_URI="https://github.com/anybotics/${PN}-release/archive/release/noetic/${PN}/0.1.6-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GNU-Lesser-General-Public-License-LGPL-"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/variant_msgs
	ros-noetic/variant_topic_tools
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
