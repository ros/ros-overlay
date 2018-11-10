# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The actionlib_tutorials package"
HOMEPAGE="http://www.ros.org/wiki/actionlib/Tutorials"
SRC_URI="https://github.com/ros-gbp/common_tutorials-release/archive/release/melodic/${PN}/0.1.11-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/message_runtime
	ros-melodic/roscpp
"
DEPEND="${RDEPEND}
	ros-melodic/actionlib_msgs
	ros-melodic/catkin
	ros-melodic/message_generation
	ros-melodic/std_msgs
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
