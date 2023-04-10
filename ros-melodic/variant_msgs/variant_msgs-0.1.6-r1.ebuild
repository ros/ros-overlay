# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Variant messages are designed to accommodate the information content of any[...]"
HOMEPAGE="http://github.com/anybotics/variant"
SRC_URI="https://github.com/anybotics/variant-release/archive/release/melodic/${PN}/0.1.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GNU-Lesser-General-Public-License-LGPL-"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/message_runtime
	ros-melodic/std_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
