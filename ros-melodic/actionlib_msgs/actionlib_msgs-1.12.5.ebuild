# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="actionlib_msgs defines the common messages to interact with an\
	 action[...]"
HOMEPAGE="http://wiki.ros.org/actionlib_msgs"
SRC_URI="https://github.com/ros-gbp/common_msgs-release/archive/release/melodic/${PN}/1.12.5-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/message_generation
	ros-melodic/message_runtime
	ros-melodic/std_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
